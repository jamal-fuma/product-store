require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestSupplier < ActiveSupport::TestCase

def test_remove
    @first  = mk_supplier "aTest product 1", "foo@bar.com"
    @second = mk_supplier "Test product 2", "foo@bar.co.uk"
    assert_equal(2,Supplier.all.size)
    assert_equal([@first,@second],Supplier.remove([@first.id,@second.id]))
    assert_equal(0,Supplier.all.size)
  end

  def test_reorder
    @first  = mk_supplier "aTest product 1", "foo@bar.com"
    @second = mk_supplier "Test product 2", "foo@bar.co.uk"
    expected_list = [@first.name,@second.name]
    assert_equal(expected_list,Supplier.all.map(&:name))
    assert_equal(true,Supplier.reorder([@second.id,@first.id]))
    assert_equal(expected_list.reverse,Supplier.all.map(&:name))
    assert_equal(true,Supplier.reorder([@first.id,@second.id]))
    assert_not_equal(expected_list.reverse,Supplier.all.map(&:name))
    assert_equal(expected_list,Supplier.all.map(&:name))
  end
end
