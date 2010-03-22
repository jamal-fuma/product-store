module NumberFormatting
   def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods

  #  adds formatting to numbers
  def virtual_attr(backing,attribute, opts={})
    opts[:regexp] ||= /(\d)(?=(\d\d\d)+(?!\d\.))/
    opts[:reject] ||= /[^\d\.]/
    opts[:cast] ||= :to_f

    # read attribute
    define_method("#{attribute}") do
      begin
        parts = self.send(backing).to_s.split('.')
        parts[0].gsub!(opts[:regexp],"\\1-")
        parts.join('.')
      rescue
        self.send(backing)
      end
    end

    handlers = {:to_f       => lambda {|val| val.to_s.gsub(/[^\d\.]+/,"").to_f },
                :to_i       => lambda {|val| val.to_s.gsub(/[^\d]+/,"").to_i },
                :to_money   => lambda {|val| val.to_s.to_money },
                :to_weight  => lambda {|val| val.to_s.to_weight },
                :to_s  => lambda {|val| val.to_s }

              }
    handler = handlers[opts[:cast]]
    handler ||= handlers[:to_s] 

    define_method("#{attribute}=") do |value|
      self.send("#{backing}=",handler[value])
      self.send(attribute)
    end
  end

  def scaling_attr(backing,attribute,opts={})
    define_method("#{attribute}") do
      (self.send(backing) * opts[:multiplier]).round
    end

  # write attribute
    define_method("#{attribute}=") do |value|
          self.send("#{backing}=",
             value / opts[:multiplier]
          )
    end
  end

  def money_attr(backing,attribute,opts={})
    # read integer pence and return real money
    define_method("#{attribute}") do
      Money.create_from_pence(self.send(backing) * opts[:multiplier])
    end

  # write attribute
    define_method("#{attribute}=") do |value|
          self.send("#{backing}=",
             Money.new(Money.parse(value) / opts[:multiplier]).pence
          )
    end
  end

  def weight_attr(backing,attribute,opts={})
    opts[:multiplier] ||= 1000
    # read integer grams and return real kilos
    define_method("#{attribute}") do
      Weight.create_from_grams(self.send(backing))
    end

  # read kilos as floats or fixnums
    define_method("#{attribute}=") do |value|
          self.send("#{backing}=",
             Weight.new(Weight.parse(value)).grams
          )
    end
  end

  def conditional_attr(attribute,primary,secondary,condition_proc)
    define_method("#{attribute}") do
        ret = self.send(primary) 
        return condition_proc[ret] ? ret : self.send(secondary)
    end
  end
end
end
