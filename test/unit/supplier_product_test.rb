require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestSupplierProduct < ActiveSupport::TestCase
  def test_reorder_products
     mk_products
    # create some test suppliers
    mk_suppliers

    # assigning two products to a single supplier
    assert_equal(0,SupplierProduct.all.size)
    assert_equal([],SupplierProduct.assign_products(@product_ids,@first_supplier))
    assert_equal(2,SupplierProduct.all.size)
    @first_supplier.reload
    assert_equal(2,@first_supplier.products.size)

    # reordering the products
    @product_ids    = @first_supplier.products.map(&:id)
    assert_equal(true, SupplierProduct.reorder_products(@product_ids,@first_supplier))
    @first_supplier.reload
    assert_equal(@product_ids, @first_supplier.products.map(&:id))

    # reverse ordering the images
    assert_equal(true, SupplierProduct.reorder_products(@product_ids.reverse,@first_supplier))
    @first_supplier.reload
    assert_equal(@product_ids.reverse, @first_supplier.products.map(&:id))
    
    # indirectly removing the products from the supplier
    assert_equal(true, SupplierProduct.remove_products(@product_ids,@first_supplier))
    @first_supplier.reload
    assert_equal(0,SupplierProduct.all.size)
    assert_equal(0,@first_supplier.products.size)

    # directly removing the products from the supplier
    assert_equal([],SupplierProduct.assign_products(@product_ids,@first_supplier))
    assert_equal(2,SupplierProduct.all.size)
    all = SupplierProduct.all
    assert_equal(all, SupplierProduct.remove(SupplierProduct.all.map(&:id)))
    assert_equal(0,SupplierProduct.all.size)
    @first_supplier.reload
    assert_equal(0,@first_supplier.products.size)
    end
end
