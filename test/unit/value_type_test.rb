require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

  class Helper
    include NumberFormatting
    attr_accessor :value
    virtual_attr  :weight, :shipping, :cast => :to_f
    weight_attr :value,  :weight
  end

  class TestValueType < ActiveSupport::TestCase
    def setup
      @helper = Helper.new
    end

    def test_value_plugin
      @helper.weight = 1
      assert_not_nil(@helper.value)
      puts @helper.value.inspect
      assert_equal(1000,@helper.value)

     @helper.shipping = "0.5Kg"
      assert_not_nil(@helper.weight)
      puts @helper.weight.inspect
      assert_equal(0.5,@helper.weight.kilos)
      assert_equal(500,@helper.weight.grams)
      assert_equal("0.500(Kg)",@helper.weight.to_s)
      

     @helper.shipping = "0.200g"
      assert_not_nil(@helper.weight)
      puts @helper.weight.inspect
      @helper.weight -= 0.1
      assert_equal(0.1,@helper.weight.kilos)
      assert_equal(100,@helper.weight.grams)
      assert_equal("0.100(Kg)",@helper.weight.to_s)
      



##    assert_equal(1000,Weight.scale)
#      assert_equal(100,Weight.get_value(100))
#      assert_equal(100,Weight.get_value(100.0))
#      assert_equal(0.1,Weight.get_value(0.1))
#      assert_equal(0.1,Weight.get_value("0.1"))
#      
#      assert_equal(false,Weight.new(1).respond_to?(:real))
#      assert_equal(false,Weight.new(1).respond_to?(:real=))
#      assert_equal(false,Weight.new(1).respond_to?(:value))
#      assert_equal(false,Weight.new(1).respond_to?(:value=))
#
#
#      @weight = Weight.new(100)
#      assert_not_nil(@weight)
#      assert_equal("Kg.100.000",@weight.to_s)
#      assert_equal(10.000,Weight.parse("Kg10.00"))
#      assert_equal(10.000,Weight.get_value("Kg10.00"))
#      assert_equal(1.000,Weight.parse("Kg1.00"))
#      assert_equal(123.345,"Kg123.345".to_weight.kilos)
#      assert_equal("Kg.123.345","Kg123.345".to_weight.to_s)
#
#      # value addition 
#      @weight = Weight.create_from_grams(100)
#      assert_equal(100,@weight.value.grams)
#      @weight += "0.1"
#      assert_not_nil(@weight.value)
#      assert_equal(200,@weight.value.grams)
#
#      # value subtraction
#      @weight -= "0.100"
#      assert_equal(0.100,@weight.value.kilos)
#      assert_equal(100,@weight.value.grams)
#      assert_equal("Kg.0.100",@weight.value.to_s)
#      
#
#      @weight.real = 1
#      assert_not_nil(@weight.value)
#      assert_equal(1000,@weight.value.inspect)
    end
  end
