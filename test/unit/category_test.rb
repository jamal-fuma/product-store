require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestCategory < ActiveSupport::TestCase
  def test_to_list
    assert_equal([["Navigation",nil]],Category.to_list)
    @first = Category.create! :name => "Acme", :parent_id => nil
    assert_equal([["Navigation",nil],["Navigation:Acme",@first.id]],Category.to_list)
    
    @second = Category.create! :name => "Widgets", :parent_id => @first.id
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Acme",@first.id],
      ["Navigation:Acme:Widgets",@second.id]
    ]
    assert_equal(expected_list,Category.to_list)
   end

  def test_drop_down_list
    assert_equal([["Navigation",nil]],Category.drop_down_list)
    @first = Category.create!  :name => "Acme", :parent_id => nil
    assert_equal([["Navigation",nil],["Navigation:Acme",@first.id]],Category.drop_down_list)
    
    @second = Category.create! :name => "Widgets", :parent_id => nil
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Acme",@first.id],
      ["Navigation:Widgets",@second.id]
    ]
    assert_equal(expected_list,Category.drop_down_list)
    assert_equal(Category.to_list,Category.drop_down_list)
  end

  def test_reorder
    assert_equal([["Navigation",nil]],Category.to_list)
    @first = Category.create! :name => "Acme", :parent_id => nil
    @second = Category.create! :name => "Widgets", :parent_id => nil
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Acme",@first.id],
      ["Navigation:Widgets",@second.id]
    ]
    assert_equal(expected_list,Category.to_list)
    assert_equal(true,Category.reorder([@second.id,@first.id]))
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Widgets",@second.id],
      ["Navigation:Acme",@first.id]
    ]
    assert_equal(true,Category.reorder([@first.id,9,@second.id]))
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Acme",@first.id],
      ["Navigation:Widgets",@second.id]
    ]
 assert_equal(expected_list,Category.to_list)
  end

def test_remove
    @first  = Category.create!(:name => "Test product 1") 
    @second = Category.create!(:name => "Test product 2") 
    assert_equal(2,Category.all.size)
    assert_equal([@first,@second],Category.remove([@first.id,@second.id]))
    assert_equal(0,Category.all.size)
  end
 
end
__END__
  
  def self.drop_down_list(id=nil)
  
  def table_name
  
  def higher
  def lower
  def reorder(list)
  def ancestors_name
  def long_name
