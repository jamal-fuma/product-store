require File.expand_path(File.dirname(__FILE__) + '/../test_helper')
class TestImageProduct < ActiveSupport::TestCase
  def test_reorder_products
    mk_images
    # create some test products
     mk_products

    # assigning two products to a single image
    assert_equal(0,ImageProduct.all.size)
    assert_equal([],ImageProduct.assign_products(@product_ids,@first_image))
    assert_equal(2,ImageProduct.all.size)
    @first_image.reload
    assert_equal(2,@first_image.products.size)
    
# reordering the products
    @product_ids    = @first_image.products.map(&:id)
    assert_equal(true, ImageProduct.reorder_products(@product_ids,@first_image))
    @first_image.reload
    assert_equal(@product_ids, @first_image.products.map(&:id))

    # reverse ordering the products
    assert_equal(true, ImageProduct.reorder_products(@product_ids.reverse,@first_image))
    @first_image.reload
    assert_equal(@product_ids.reverse, @first_image.products.map(&:id))

    # indirectly removing the products from the image
    assert_equal(true, ImageProduct.remove_products(@product_ids,@first_image))
    @first_image.reload
    assert_equal(0,@first_image.products.size)
    
   # directly removing the products from the image
    assert_equal([],ImageProduct.assign_products(@product_ids,@first_image))
    assert_equal(2,ImageProduct.all.size)
    ImageProduct.remove(ProductImage.all.map(&:id))
    assert_equal(0,ImageProduct.all.size)
    @first_image.reload
    assert_equal(0,@first_image.products.size)
    end
end
