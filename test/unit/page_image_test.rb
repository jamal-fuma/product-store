require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestPageImage < ActiveSupport::TestCase
  def test_reorder_images
     mk_images
    # create some test pages
     mk_pages

    # assigning two images to a single page
    assert_equal(0,PageImage.all.size)
    assert_equal([],PageImage.assign_images(@image_ids,@first_page))
    assert_equal(2,PageImage.all.size)
    @first_page.reload
    assert_equal(2,@first_page.images.size)

    # reordering the images
    @image_ids    = @first_page.images.map(&:id)
    assert_equal(true, PageImage.reorder_images(@image_ids,@first_page))
    @first_page.reload
    assert_equal(@image_ids, @first_page.images.map(&:id))

    # reverse ordering the images
    assert_equal(true, PageImage.reorder_images(@image_ids.reverse,@first_page))
    @first_page.reload
    assert_equal(@image_ids.reverse, @first_page.images.map(&:id))
    
    # indirectly removing the images from the page
    assert_equal(true, PageImage.remove_images(@image_ids,@first_page))
    @first_page.reload
    assert_equal(0,@first_page.images.size)

   # directly removing the images from the page
    assert_equal([],PageImage.assign_images(@image_ids,@first_page))
    assert_equal(2,PageImage.all.size)
    PageImage.remove(PageImage.all.map(&:id))
    assert_equal(0,PageImage.all.size)
    @first_page.reload
    assert_equal(0,@first_page.images.size)
    end
end
