require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestCategoryImage < ActiveSupport::TestCase
  def test_reorder_images
     mk_images
    # create some test categories
     mk_categories

    # assigning two images to a single category
    assert_equal(0,CategoryImage.all.size)
    assert_equal([],CategoryImage.assign_images(@image_ids,@first_category))
    assert_equal(2,CategoryImage.all.size)
    @first_category.reload
    assert_equal(2,@first_category.images.size)

    # reordering the images
    @image_ids    = @first_category.images.map(&:id)
    assert_equal(true, CategoryImage.reorder_images(@image_ids,@first_category))
    @first_category.reload
    assert_equal(@image_ids, @first_category.images.map(&:id))

    # reverse ordering the images
    assert_equal(true, CategoryImage.reorder_images(@image_ids.reverse,@first_category))
    @first_category.reload
    assert_equal(@image_ids.reverse, @first_category.images.map(&:id))
    
    # indirectly removing the images from the category
    assert_equal(true, CategoryImage.remove_images(@image_ids,@first_category))
    @first_category.reload
    assert_equal(0,@first_category.images.size)

   # directly removing the images from the category
    assert_equal([],CategoryImage.assign_images(@image_ids,@first_category))
    assert_equal(2,CategoryImage.all.size)
    CategoryImage.remove(CategoryImage.all.map(&:id))
    assert_equal(0,CategoryImage.all.size)
    @first_category.reload
    assert_equal(0,@first_category.images.size)
    end
end
