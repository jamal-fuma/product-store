require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestImage < ActiveSupport::TestCase
 
def test_remove
    @first  = Image.new(:name => "Test product 1")
    @first.uploaded_data ="http://www.seedsofitaly.com/objects/product_images/c4e87a3a.jpg"
    @first.save!
    @second = Image.new(:name => "Test product 2") 
    @second.uploaded_data = "http://www.seedsofitaly.com/objects/product_images/c4e87a3a.jpg" 
    @second.save!
    assert_equal(2,Image.parents.size)
    assert_equal([@first,@second],Image.remove([@first.id,@second.id]))
    assert_equal(0,Image.all.size)
  end

  def test_reorder
    Image.all.map(&:destroy)
    @first  = Image.new(:name => "Test product 1")
    @first.uploaded_data = "http://www.seedsofitaly.com/objects/product_images/c4e87a3a.jpg"
    @first.save!
    @second = Image.new(:name => "Test product 2") 
    @second.uploaded_data = "http://www.seedsofitaly.com/objects/product_images/c4e87a3a.jpg" 
    @second.save!
     expected_list = [@first.name,@second.name]
    assert_equal(expected_list,Image.parents.map(&:name))
    assert_equal(true,Image.reorder([@second.id,@first.id]))
    assert_equal(expected_list.reverse,Image.parents.map(&:name))
    assert_equal(true,Image.reorder([@first.id,@second.id]))
    assert_not_equal(expected_list.reverse,Image.parents.map(&:name))
    assert_equal(expected_list,Image.parents.map(&:name))
  end
end
