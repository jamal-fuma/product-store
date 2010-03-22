# Money class. 
# This stores the value of the price in pence, and can be initialized with
# a Float (pounds.pence) or Integer (pounds). To create a money object from
# pence, use create_from_pence (Money.create_from_pence(500) and Money.new(5) are
# the same).
# 
# If a String is passed, it will do it's best to figure turn it into a float. 
# This means "10.00" and "10 pounds" would both be treated as 10.00
#
# The following article by Martin Fowler was used as a reference:
#   http://www.martinfowler.com/ap2/quantity.html
#


#raise "Another Money Object is already defined!" if Object.const_defined?(:Money)

class MoneyError < StandardError; end;
class Money
  include Comparable
  
  # Create a new Money object with value. Value can be a Float (Pounds.pence) or Fixnum (Pounds).
  def initialize(value)
    @pence = (Money.get_value(value)*100.0).round
  end

  # Create a new Money object with a value representing pence.
  def self.create_from_pence(value)
    return Money.new(Money.get_value(value)/100.0)
  end
    
  # Equality. 
  def eql?(other)
   (pence <=> other.pence)
  end

  # Equality for Comparable.
  def <=>(other)
    eql?(other)
  end

  # Add Fixnum, Float, or Money and return result as a Money object
  def +(other)
    Money.create_from_pence((pence + other.to_money.pence))
  end

  # Subtract Fixnum, Float, or Money and return result as a Money object
  def -(other)
    Money.create_from_pence((pence - other.to_money.pence))
  end
  
  # Multiply by fixnum and return result as a Money object
  def *(other)
    Money.create_from_pence((pence * other).round)
  end
  
  # Divide by fixnum and return result as a Money object
  def /(denominator)
    raise MoneyError, "Denominator must be a Fixnum. (#{denominator} is a #{denominator.class})"\
      unless denominator.is_a? Fixnum

    result = []
    equal_division = (pence / denominator).round
    denominator.times { result << Money.create_from_pence(equal_division) }
    extra_pennies = pence - (equal_division * denominator)
    
    # Make sure we don't loose any pennies!
    extra_pennies.times { |p| result[p] += 0.01 }
    result
  end
 
  # Is this free?
  def free?
    return (pence == 0)
  end
  alias zero? free?

  # Return the value in pence
  def pence
    @pence
  end  

  # Return the value in pounds
  def pounds
    pence.to_f / 100
  end

  # Return the value in a string (in pounds)
  def to_s
    return "free" if free?
    seperated = "#{sprintf("%.2f",pounds)}".to_s.split(".")
    seperated[0] = seperated[0].to_s.reverse.scan(/..?.?/).join(",").reverse
    "£#{seperated.join(".")}"
  end

  # Conversation to self
  def to_money
    self
  end

  def self.parse(str)
    self.get_value(str)
  end

  private 
  # Get a value in preperation for creating a new Money object. 
  def self.get_value(value)
    value = value.gsub(/[^0-9.]/,'').to_f if value.kind_of?(String) 
    value = 0 if value.nil?
    value = value.pounds if value.kind_of?(Money)
    unless value.kind_of?(Integer) or value.kind_of?(Float)
      raise MoneyError, "Cannot create money from pence with #{value.class}. Fixnum required." 
    end
    value
  end

end

class String
  def to_money
    Money.new(Money.parse(self))
  end
end

class Numeric
  # Creates a new money object with the value of the +Numeric+ object.
  #   100.to_money => #<Money @pence=100>
  #   100.00.to_money => #<Money @pence=10000>
  #   100.37.to_money => #<Money @pence=10037>
  def to_money
    Money.new(self)
  end
end
