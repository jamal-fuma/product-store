require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestProduct < ActiveSupport::TestCase
 
def test_remove
    @first  = Product.create!(:name => "Test product 1") 
    @second = Product.create!(:name => "Test product 2") 
    assert_equal(2,Product.all.size)
    assert_equal([@first,@second],Product.remove([@first.id,@second.id]))
    assert_equal(0,Product.all.size)
  end

  def test_reorder
    @first  = Product.create!(:name => "Acme products dont appear") 
    @second = Product.create!(:name => "Beers costs more") 
    expected_list = ["Acme products dont appear","Beers costs more"]
    assert_equal(expected_list,Product.all.map(&:name))
    assert_equal(true,Product.reorder([@second.id,@first.id]))
    assert_equal(expected_list.reverse,Product.all.map(&:name))
    assert_equal(true,Product.reorder([@first.id,@second.id]))
    assert_not_equal(expected_list.reverse,Product.all.map(&:name))
    assert_equal(expected_list,Product.all.map(&:name))
  end

  def test_drop_down_list
    @first  = Product.create!(:name => "Acme") 
    @second = Product.create!(:name => "Beers") 
    list=[[@first.name,@first.id],[@second.name,@second.id]]
    assert_equal(list,Product.drop_down_list)
  end
end
