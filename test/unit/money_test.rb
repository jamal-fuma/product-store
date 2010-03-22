require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestMoney < ActiveSupport::TestCase

  def setup
  end

  def test_conversion
    assert_equal("£10.00",Money.new(10).to_s)
    assert_equal("£10.10",Money.new(10.10).to_s)
    assert_equal("£0.10",Money.new(Money.new(10.10)-Money.new(10)).to_s)
    assert_equal("£0.10",Money.new(Money.new(Money.new(10.10)-Money.new(10))).to_s)
    assert_equal(1175,(Money.new(10)*1.175).pence)
    price = Money.new(3.33)
    price += 3.34
    price += 3.33
    price *= 1.175
    assert_equal(1175,price.pence)

    total = (price / 3).inject(0){|sum,val| Money.new(sum) + val }
    assert_equal("£11.75",total.to_s)
    assert_in_delta((1.0 - 0.9 - 0.1).abs, (Money.new(1.0) - Money.new(0.9) - Money.new(0.1)).pounds,0.5)
  end

  def test_parsing
    assert_equal(10.00,Money.parse("£10.00"))
    assert_equal(1.00,Money.parse("£1.00"))
    assert_equal(123.35,"£123.345".to_money.pounds)
    assert_equal("£123.35","£123.345".to_money.to_s)
  end
end


