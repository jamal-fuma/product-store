require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestSelected < ActiveSupport::TestCase
  def setup
    @helper = Object.new
    @helper.extend ParameterScanning
  end

  def test_transform
    assert_not_nil(@helper.transform(nil))
    assert_equal([],@helper.transform(nil))
    assert_equal([],@helper.transform([nil]))
    assert_equal([],@helper.transform([""]))
    assert_equal([1],@helper.transform(["1"]))
    assert_equal([1,2],@helper.transform(["1,2"]))
    assert_equal([1,2,3],@helper.transform(["1,2","3"]))
    assert_equal([1,2,3],@helper.transform("1,2,3"))
    assert_equal([1,2,3,4],@helper.transform([["1,2,3"],["4"]]))
    assert_equal([1,2,3,4],@helper.transform([[[1],[2],[3]],[["4"]]]))
  end

  def test_selected
    assert_not_nil(@helper.selected(nil,nil))
    assert_equal([[1],[]],@helper.selected([1],[2]))
    assert_equal([[],[1]],@helper.selected([1],[1,2]))
    assert_equal([[3],[1,2]],@helper.selected(["1,2,3"],["1,2"]))
    assert_equal([[3],[1,2]],@helper.selected(["1,2,3,3"],["1,2"]))
    assert_equal([[3,1,5],[2]],@helper.selected(["2,3,1,3,5"],["4,2"]))
  end

end

__END__
