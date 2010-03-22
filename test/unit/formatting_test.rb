require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

  class Helper
  end

  class TestFormatting < ActiveSupport::TestCase
    def setup
      @cost   = 10
      @price  = Money.new 30
      @scalar = 3
      @val  = 100_000_00
      @str = "10-000-000"
    end

    def test_price_scaling
       Helper.class_eval {
        include NumberFormatting
        attr_accessor :cost
        virtual_attr :price,:value                  
        money_attr :cost,:price, :multiplier => 3
      }
      @helper = Helper.new
      assert(Helper.respond_to? :money_attr)
      assert(Helper.respond_to? :virtual_attr)

     # backing store is in pence
      @helper.cost = 1000
      assert_equal(30,@helper.price.pounds)
      assert_equal(3000,@helper.price.pence)
      assert_equal("£30.00",@helper.price.to_s)


      @helper.price = 30.00
      assert_equal(1000,@helper.cost)
      assert_equal("1000",@helper.cost.to_s)
    
      @helper.cost = 10
      assert_equal("£0.30",@helper.price.to_s)
      assert_equal(30,@helper.price.pence)
      assert_equal("£0.30",@helper.price.to_s)

       Helper.class_eval {
        virtual_attr :price,:value                  
        money_attr :cost,:price, :multiplier => 1.175
      }
      @helper = Helper.new

     # assigning the fixnum 10 should mean ten quid
      @helper.cost = 1000
      assert_equal(11.75,@helper.price.pounds)
      assert_equal(1175,@helper.price.pence)
      assert_equal("£11.75",@helper.price.to_s)      
      puts @helper.cost
      puts @helper.price
      puts @helper.value

      assert_nothing_raised do
        @helper.price = "£11.75"
      end

    end

    def test_weight_scaling
       Helper.class_eval {
    include NumberFormatting
    attr_accessor :value
    virtual_attr  :weight, :shipping, :cast => :to_f
    weight_attr :value,  :weight
      }
      @helper = Helper.new
      assert(Helper.respond_to? :weight_attr)

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
       assert_nothing_raised do
        @helper.shipping = "11.75(Kg)"
      end

    end


    def test_output_formatting
        Helper.class_eval {
    include NumberFormatting
    attr_accessor :real
           # fiendish regexp that formats as 10-000-000
          virtual_attr :real,:fake, :regexp => /(\d)(?=(\d\d\d)+(?!\d))/
      }
      @helper = Helper.new
      @helper.real = @val
      assert_equal(@str,@helper.fake)

      @helper.fake = @str
      assert_equal(@val,@helper.real)
    end
  
    def test_conditional_attribute
        Helper.class_eval {
    include NumberFormatting
    attr_accessor :real,:fake
          # return value of either method dependent on condition
          conditional_attr :virtual, :real, :fake, lambda{|val|  !val.blank?  }
      }
      @helper = Helper.new
      @helper.fake = "fake"
      
      @helper.real = "real"
      assert_equal("real",@helper.virtual)
     
      @helper.real = nil
      assert_equal("fake",@helper.virtual)
    end


  end
__END__
