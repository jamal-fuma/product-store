require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestPage < ActiveSupport::TestCase
  def test_to_list
    assert_equal([["Navigation",nil]],Page.to_list)
    @first = Page.create! :name => "Acme", :parent_id => nil
    assert_equal([["Navigation",nil],["Navigation:Acme",@first.id]],Page.to_list)
    
    @second = Page.create! :name => "Widgets", :parent_id => @first.id
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Acme",@first.id],
      ["Navigation:Acme:Widgets",@second.id]
    ]
    assert_equal(expected_list,Page.to_list)
   end

  def test_drop_down_list
    assert_equal([["Navigation",nil]],Page.drop_down_list)
    @first = Page.create!  :name => "Acme", :parent_id => nil
    assert_equal([["Navigation",nil],["Navigation:Acme",@first.id]],Page.drop_down_list)
    
    @second = Page.create! :name => "Widgets", :parent_id => nil
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Acme",@first.id],
      ["Navigation:Widgets",@second.id]
    ]
    assert_equal(expected_list,Page.drop_down_list)
    assert_equal(Page.to_list,Page.drop_down_list)
  end

  def test_reorder
    assert_equal([["Navigation",nil]],Page.to_list)
    @first = Page.create! :name => "Acme", :parent_id => nil
    @second = Page.create! :name => "Widgets", :parent_id => nil
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Acme",@first.id],
      ["Navigation:Widgets",@second.id]
    ]
    assert_equal(expected_list,Page.to_list)
    assert_equal(true,Page.reorder([@second.id,@first.id]))
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Widgets",@second.id],
      ["Navigation:Acme",@first.id]
    ]
    assert_equal(true,Page.reorder([@first.id,9,@second.id]))
    expected_list = [
      ["Navigation",nil],
      ["Navigation:Acme",@first.id],
      ["Navigation:Widgets",@second.id]
    ]
 assert_equal(expected_list,Page.to_list)
  end

def test_remove
    @first  = Page.create!(:name => "Test product 1") 
    @second = Page.create!(:name => "Test product 2") 
    assert_equal(2,Page.all.size)
    assert_equal([@first,@second],Page.remove([@first.id,@second.id]))
    assert_equal(0,Page.all.size)
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
