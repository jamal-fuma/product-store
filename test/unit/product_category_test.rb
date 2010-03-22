require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestProductCategory < ActiveSupport::TestCase
  def test_reorder_categories
      mk_products
    # create some test categorys
     mk_categories

    # assigning two categories to a single category
    assert_equal(0,ProductCategory.all.size)
    assert_equal([],ProductCategory.assign_categories(@category_ids,@first_product))
    assert_equal(2,ProductCategory.all.size)
    @first_product.reload
    assert_equal(2,@first_product.categories.size)

    # reordering the categories
    @category_ids    = @first_product.categories.map(&:id)
    assert_equal(true, ProductCategory.reorder_categories(@category_ids,@first_product))
    @first_product.reload
    assert_equal(@category_ids, @first_product.categories.map(&:id))

    # reverse ordering the categories
    assert_equal(true, ProductCategory.reorder_categories(@category_ids.reverse,@first_product))
    @first_product.reload
    assert_equal(@category_ids.reverse, @first_product.categories.map(&:id))
 
    # indirectly removing the categories from the category
    assert_equal(true, ProductCategory.remove_categories(@category_ids,@first_product))
    @first_product.reload
    assert_equal(0,@first_product.categories.size)
    
   # directly removing the categories from the category
    assert_equal([],ProductCategory.assign_categories(@category_ids,@first_product))
    assert_equal(2,ProductCategory.all.size)
    ProductCategory.remove(ProductCategory.all.map(&:id))
    assert_equal(0,ProductCategory.all.size)
    @first_product.reload
    assert_equal(0,@first_product.categories.size)
    end
end
