require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestImageCategory < ActiveSupport::TestCase
  def test_reorder_categories
     mk_images
    # create some test categories
     mk_categories

    # assigning two categories to a single image
    assert_equal(0,ImageCategory.all.size)
    assert_equal([],ImageCategory.assign_categories(@category_ids,@first_image))
    assert_equal(2,ImageCategory.all.size)
    @first_image.reload
    assert_equal(2,@first_image.categories.size)

    # reordering the categories
    @category_ids    = @first_image.categories.map(&:id)
    assert_equal(true, ImageCategory.reorder_categories(@category_ids,@first_image))
    @first_image.reload
    assert_equal(@category_ids, @first_image.categories.map(&:id))

    # reverse ordering the categories
    assert_equal(true, ImageCategory.reorder_categories(@category_ids.reverse,@first_image))
    @first_image.reload
    assert_equal(@category_ids.reverse, @first_image.categories.map(&:id))

    # indirectly removing the images from the category
    assert_equal(true, ImageCategory.remove_categories(@category_ids,@first_image))
    @first_image.reload
    assert_equal(0,@first_image.categories.size)
    
   # directly removing the images from the category
    assert_equal([],ImageCategory.assign_categories(@category_ids,@first_image))
    assert_equal(2,ImageCategory.all.size)
    ImageCategory.remove(ImageCategory.all.map(&:id))
    assert_equal(0,ImageCategory.all.size)
    @first_image.reload
    assert_equal(0,@first_image.categories.size)
    end
end
