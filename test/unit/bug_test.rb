require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestBug < ActiveSupport::TestCase
  def test_human_title
      @bug = Bug.create! :title => "Acme products dont appear", :user_id => 1, :description => "this is broken", :status => 1
      assert_equal(%Q{[Open Fault] : "Acme products dont appear"},@bug.human_title)
  end
  
  def test_human_readable_status
    @bug = Bug.create! :title => "Acme products dont appear", :user_id => 1, :description => "this is broken", :status => 1
    assert_equal("Open Fault",@bug.human_readable_status)
  end

  def test_drop_down_list
    assert_equal([ [Faults::Values[0],0], [Faults::Values[1],1], [Faults::Values[2],2], [Faults::Values[3],3] ],Bug.drop_down_list)
  end

  def test_reorder
    @first = Bug.create! :title => "Acme products dont appear", :user_id => 1, :description => "this is broken", :status => 1
    @second = Bug.create! :title => "Beers costs more", :user_id => 1, :description => "this is broken", :status => 1
    expected_list = ["Acme products dont appear","Beers costs more"]

    assert_equal(expected_list,Bug.all.map(&:title))
    assert_equal(true,Bug.reorder([@second.id,@first.id]))
    assert_equal(expected_list.reverse,Bug.all.map(&:title))
    assert_equal(true,Bug.reorder([@first.id,@second.id]))
    assert_not_equal(expected_list.reverse,Bug.all.map(&:title))
    assert_equal(expected_list,Bug.all.map(&:title))
  end

  def test_remove
    @first = Bug.create! :title => "Acme products dont appear", :user_id => 1, :description => "this is broken", :status => 1
    @second = Bug.create! :title => "Beers costs more", :user_id => 1, :description => "this is broken", :status => 1
    assert_equal(2,Bug.all.size)
    assert_equal([@first,@second],Bug.remove([@first.id,@second.id]))
    assert_equal(0,Bug.all.size)
  end
end
