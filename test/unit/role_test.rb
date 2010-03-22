require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestRole < ActiveSupport::TestCase
 
def test_remove
    @first  = Role.create!(:name => "Test product 1", :description => "a random blurb") 
    @second = Role.create!(:name => "Test product 2", :description => "yet more blurm") 
    assert_equal(2,Role.all.size)
    assert_equal([@first,@second],Role.remove([@first.id,@second.id]))
    assert_equal(0,Role.all.size)
  end

  def test_reorder
    @first  = Role.create!(:name => "Test product 1", :description => "a random blurb") 
    @second = Role.create!(:name => "Test product 2", :description => "yet more blurm") 
    expected_list = [@first.name,@second.name]
    assert_equal(expected_list,Role.all.map(&:name))
    assert_equal(true,Role.reorder([@second.id,@first.id]))
    assert_equal(expected_list.reverse,Role.all.map(&:name))
    assert_equal(true,Role.reorder([@first.id,@second.id]))
    assert_not_equal(expected_list.reverse,Role.all.map(&:name))
    assert_equal(expected_list,Role.all.map(&:name))
  end
end
