class Weight < Mass
  def  initialize(value)
    super(value)
  end 
end

class String
  def to_weight
    Weight.new(Weight.parse(self))
  end
end

class Numeric
  def to_weight
    Weight.new(self)
  end
end
