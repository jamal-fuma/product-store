require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestComment < ActiveSupport::TestCase
  def test_reorder
    @first = Comment.create! :detail => "Acme products dont appear", :user_id => 1
    @second = Comment.create! :detail => "Beers costs more", :user_id => 1
    expected_list = ["Acme products dont appear","Beers costs more"]

    assert_equal(expected_list,Comment.all.map(&:detail))
    assert_equal(true,Comment.reorder([@second.id,@first.id]))
    assert_equal(expected_list.reverse,Comment.all.map(&:detail))
    assert_equal(true,Comment.reorder([@first.id,@second.id]))
    assert_not_equal(expected_list.reverse,Comment.all.map(&:detail))
    assert_equal(expected_list,Comment.all.map(&:detail))
  end
  
  def test_remove
    @first = Comment.create! :detail => "Acme products dont appear", :user_id => 1
    @second = Comment.create! :detail => "Beers costs more", :user_id => 1
    assert_equal(2,Comment.all.size)
    assert_equal([@first,@second],Comment.remove([@first.id,@second.id]))
    assert_equal(0,Comment.all.size)
  end

  def test_title
    @first = Comment.create! :detail => "Acme products dont appear", :user_id => 1
    @first.user = User.new(:name => "foo")
    @first.bug =  Bug.new(:title => "stuff is broken",:status => 1)
    assert_equal('Comment posted by (foo) for [Open Fault] : "stuff is broken".',@first.title)
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
