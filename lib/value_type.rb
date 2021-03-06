module ValueType
  include Comparable

  def self.included(base)
    base.extend(ClassMethods)
    base.class_eval{
    attr_accessor :mass
      value_type_attr :mass, :value
    }
  end

  # Create a new ValueType object with value. Value can be a Float (Integrals.unit) or Fixnum (Integrals).
  module ClassMethods
    def value_type_attr(backing,attribute,opts={})
      opts[:multiplier]   ||= 1.0
      opts[:unit]         ||= :grams
      opts[:integrals]    ||= :kilos
      opts[:prefix]       ||= 'Kg.'
      opts[:scale]        ||= 1000.0
      opts[:type]         ||= 'weight'
    
     (class << self
        self
     end).class_eval {
      # Create a new ValueType object with a value representing opts[:unit]
      # Get a value in preperation for creating a new ValueType object. 
      define_method("create_from_#{opts[:unit]}") do |value|
        new(self.get_value(value) / self.scale)
      end

      define_method "scale" do
        opts[:scale]
      end

      define_method "get_value" do |value|
        value = value.gsub(/[^0-9.]/,'').to_f if value.kind_of?(String) 
        value = 0 if value.nil?
        value = value.send(opts[:integrals]) if value.kind_of?(self.class)
        unless value.kind_of?(Integer) or value.kind_of?(Float)
          raise ValueTypeError, "Cannot create #{opts[:type]} from #{opts[:unit]} with #{value.class}. Fixnum required." 
        end
        value
      end

      define_method "parse" do |str|
        get_value(str)
      end
     }
    
    define_method("to_#{opts[:type]}") do
      self
    end


    # Equality. 
    define_method("eql?#{opts[:unit]}") do |other|
      self.send("#{opts[:unit]}") <=> other.send("#{opts[:unit]}")
    end

    # Equality for Comparable.
    define_method("<=>") do |other|
      eql?(other)
    end

# Add Fixnum, Float, or ValueType and return result as a ValueType object
    define_method("+") do |other|
      self.class.send("create_from_#{opts[:unit]}",
          (
            send("#{opts[:unit]}") + 
            other.send("to_#{opts[:type]}").send("#{opts[:unit]}")
          )
      )
    end

# Subtract Fixnum, Float, or ValueType and return result as a ValueType object
    define_method("-") do |other|
      self.class.send("create_from_#{opts[:unit]}",
          (
            send("#{opts[:unit]}") -
            other.send("to_#{opts[:type]}").send("#{opts[:unit]}")
          )
      )
    end

# Multiply by fixnum and return result as a ValueType object
    define_method("*") do |other|
      self.send("create_from_#{opts[:unit]}",(self.send("#{opts[:unit]}") * other).round)
    end

# Divide by fixnum and return result as a ValueType object
    define_method(%Q{/}) do |denominator|
      raise ValueTypeError, "Denominator must be a Fixnum. (#{denominator} is a #{denominator.class})"\
      unless denominator.is_a? Fixnum

      result = []
      equal_division = (self.send("#{opts[:unit]}") / denominator).round
      denominator.times { result << self.send("create_from_#{opts[:unit]}",equal_division) }
      extra_units = self.send("#{opts[:unit]}") - (equal_division * denominator)

      # Make sure we don't loose any units!
      extra_units.times { |p| result[p] += 0.01 }
      result
    end
  
# Return the value in #{opts[:unit]} 
    define_method("#{opts[:unit]}") do
      scalar = self.class.send(:scale)
      raw = self.instance_variable_get("@#{opts[:units]}") || 0
      raw * scalar
    end  

# Return the value in opts[:integrals]
    define_method("#{opts[:integrals]}") do
      scalar = self.class.send(:scale)
      self.send(opts[:unit]).to_f / scalar
    end  

# Return the value in a string (in integrals)
    define_method("to_s") do
      return "free" if self.send("free?")
      seperated = "#{sprintf("%.3f",self.send(opts[:integrals]))}".to_s.split(".")
      seperated[0] = seperated[0].to_s.reverse.scan(/..?.?/).join(",").reverse
      "#{opts[:prefix]}#{seperated.join(".")}"
    end


# Is this free?
    define_method("free?") do
      return (self.send("#{opts[:unit]}") == 0)
    end
    self.send("alias_method",:zero?,:free?)

  end 
 end
end
# valueTypes
__END__

