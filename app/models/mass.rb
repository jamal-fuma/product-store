# Mass class. 
# This stores the value of the price in grams, and can be initialized with
# a Float (kilos.grams) or Integer (kilos). To create a mass object from
# grams, use create_from_grams (Mass.create_from_grams(500) and Mass.new(5) are
# the same).
# 
# If a String is passed, it will do it's best to figure turn it into a float. 
# This means "10.00" and "10 kilos" would both be treated as 10.00
#
# The following article by Martin Fowler was used as a reference:
#   http://www.martinfowler.com/ap2/quantity.html
#


#raise "Another Mass Object is already defined!" if Object.const_defined?(:Mass)

class MassError < StandardError; end;
class Mass
  include Comparable
  
  # Create a new Mass object with value. Value can be a Float (Kilos.grams) or Fixnum (Kilos).
  def initialize(value)
    @grams = (Mass.get_value(value)*1000.0).round
  end

  # Create a new Mass object with a value representing grams.
  def self.create_from_grams(value)
    return Mass.new(Mass.get_value(value)/1000.0)
  end
    
  # Equality. 
  def eql?(other)
   (grams <=> other.grams)
  end

  # Equality for Comparable.
  def <=>(other)
    eql?(other)
  end

  # Add Fixnum, Float, or Mass and return result as a Mass object
  def +(other)
    Mass.create_from_grams((grams + other.to_mass.grams))
  end

  # Subtract Fixnum, Float, or Mass and return result as a Mass object
  def -(other)
    Mass.create_from_grams((grams - other.to_mass.grams))
  end
  
  # Multiply by fixnum and return result as a Mass object
  def *(other)
    Mass.create_from_grams((grams * other).round)
  end
  
  # Divide by fixnum and return result as a Mass object
  def /(denominator)
    raise MassError, "Denominator must be a Fixnum. (#{denominator} is a #{denominator.class})"\
      unless denominator.is_a? Fixnum

    result = []
    equal_division = (grams / denominator).round
    denominator.times { result << Mass.create_from_grams(equal_division) }
    remainder = grams - (equal_division * denominator)
    
    # Make sure we don't loose any grams!
    remainder.times { |p| result[p] += 0.01 }
    result
  end
 
  # Is this free?
  def free?
    return (grams == 0)
  end
  alias zero? free?

  # Return the value in grams
  def grams
    @grams
  end  

  # Return the value in kilos
  def kilos
    grams.to_f / 1000
  end

  # Return the value in a string (in kilos)
  def to_s
    return "free" if free?
    seperated = "#{sprintf("%.3f",kilos)}".to_s.split(".")
    seperated[0] = seperated[0].to_s.reverse.scan(/..?.?/).join(",").reverse
    "#{seperated.join(".")}(Kg)"
  end

  # Conversation to self
  def to_mass
    self
  end

  def self.parse(str)
    self.get_value(str)
  end

  private 
  # Get a value in preperation for creating a new Mass object. 
  def self.get_value(value)
    value = value.gsub(/[^0-9.]/,'').to_f if value.kind_of?(String) 
    value = 0 if value.nil?
    value = value.kilos if value.kind_of?(Mass)
    unless value.kind_of?(Integer) or value.kind_of?(Float)
      raise MassError, "Cannot create mass from grams with #{value.class}. Fixnum required." 
    end
    value
  end
end

class String
  def to_mass
    Mass.new(Mass.parse(self))
  end
end

class Numeric
  # Creates a new mass object with the value of the +Numeric+ object.
  #   100.to_mass => #<Mass @grams=100>
  #   100.00.to_mass => #<Mass @grams=10000>
  def to_mass
    Mass.new(self)
  end
end
