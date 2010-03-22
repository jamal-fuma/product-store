require File.expand_path(File.dirname(__FILE__) + '/../test_helper')
class TestProductImage < ActiveSupport::TestCase
  def test_reorder_images
    mk_images
    # create some test products
     mk_products

    # assigning two images to a single product
    assert_equal(0,ProductImage.all.size)
    assert_equal([],ProductImage.assign_images(@image_ids,@first_product))
    assert_equal(2,ProductImage.all.size)
    @first_product.reload
    assert_equal(2,@first_product.images.size)
    
# reordering the images
    @image_ids    = @first_product.images.map(&:id)
    assert_equal(true, ProductImage.reorder_images(@image_ids,@first_product))
    @first_product.reload
    assert_equal(@image_ids, @first_product.images.map(&:id))

    # reverse ordering the images
    assert_equal(true, ProductImage.reorder_images(@image_ids.reverse,@first_product))
    @first_product.reload
    assert_equal(@image_ids.reverse, @first_product.images.map(&:id))

    # indirectly removing the images from the product
    assert_equal(true, ProductImage.remove_images(@image_ids,@first_product))
    @first_product.reload
    assert_equal(0,@first_product.images.size)
    
   # directly removing the images from the product
    assert_equal([],ProductImage.assign_images(@image_ids,@first_product))
    assert_equal(2,ProductImage.all.size)
    ProductImage.remove(ProductImage.all.map(&:id))
    assert_equal(0,ProductImage.all.size)
    @first_product.reload
    assert_equal(0,@first_product.images.size)
    end
end
