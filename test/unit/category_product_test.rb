require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestCategoryProduct < ActiveSupport::TestCase
  def test_reorder_products
     mk_products
    # create some test categories
    mk_categories

    # assigning two products to a single category
    assert_equal(0,CategoryProduct.all.size)
    assert_equal([],CategoryProduct.assign_products(@product_ids,@first_category))
    assert_equal(2,CategoryProduct.all.size)
    @first_category.reload
    assert_equal(2,@first_category.products.size)

    # reordering the products
    @product_ids    = @first_category.products.map(&:id)
    assert_equal(true, CategoryProduct.reorder_products(@product_ids,@first_category))
    @first_category.reload
    assert_equal(@product_ids, @first_category.products.map(&:id))

    # reverse ordering the images
    assert_equal(true, CategoryProduct.reorder_products(@product_ids.reverse,@first_category))
    @first_category.reload
    assert_equal(@product_ids.reverse, @first_category.products.map(&:id))
    
    # indirectly removing the products from the category
    assert_equal(true, CategoryProduct.remove_products(@product_ids,@first_category))
    @first_category.reload
    assert_equal(0,CategoryProduct.all.size)
    assert_equal(0,@first_category.products.size)

    # directly removing the products from the category
    assert_equal([],CategoryProduct.assign_products(@product_ids,@first_category))
    assert_equal(2,CategoryProduct.all.size)
    all = CategoryProduct.all
    assert_equal(all,CategoryProduct.remove(CategoryProduct.all.map(&:id)))
    assert_equal(0,CategoryProduct.all.size)
    @first_category.reload
    assert_equal(0,@first_category.products.size)
    end
end
