require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestPageProduct < ActiveSupport::TestCase
  def test_reorder_products
     mk_products
    # create some test pages
    mk_pages

    # assigning two products to a single page
    assert_equal(0,PageProduct.all.size)
    assert_equal([],PageProduct.assign_products(@product_ids,@first_page))
    assert_equal(2,PageProduct.all.size)
    @first_page.reload
    assert_equal(2,@first_page.products.size)

    # reordering the products
    @product_ids    = @first_page.products.map(&:id)
    assert_equal(true, PageProduct.reorder_products(@product_ids,@first_page))
    @first_page.reload
    assert_equal(@product_ids, @first_page.products.map(&:id))

    # reverse ordering the images
    assert_equal(true, PageProduct.reorder_products(@product_ids.reverse,@first_page))
    @first_page.reload
    assert_equal(@product_ids.reverse, @first_page.products.map(&:id))
    
    # indirectly removing the products from the page
    assert_equal(true, PageProduct.remove_products(@product_ids,@first_page))
    @first_page.reload
    assert_equal(0,PageProduct.all.size)
    assert_equal(0,@first_page.products.size)

    # directly removing the products from the page
    assert_equal([],PageProduct.assign_products(@product_ids,@first_page))
    assert_equal(2,PageProduct.all.size)
    all = PageProduct.all
    assert_equal(all,PageProduct.remove(PageProduct.all.map(&:id)))
    assert_equal(0,PageProduct.all.size)
    @first_page.reload
    assert_equal(0,@first_page.products.size)
    end
end
