require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TestProductSupplier < ActiveSupport::TestCase
  def test_reorder_suppliers
     mk_suppliers
    # create some test products
    mk_products

    # assigning two suppliers to a single product
    assert_equal(0,ProductSupplier.all.size)
    assert_equal([],ProductSupplier.assign_suppliers(@supplier_ids,@first_product))
    assert_equal(2,ProductSupplier.all.size)
    @first_product.reload
    assert_equal(2,@first_product.suppliers.size)

    # reordering the suppliers
    @supplier_ids    = @first_product.suppliers.map(&:id)
    assert_equal(true, ProductSupplier.reorder_suppliers(@supplier_ids,@first_product))
    @first_product.reload
    assert_equal(@supplier_ids, @first_product.suppliers.map(&:id))

    # reverse ordering the images
    assert_equal(true, ProductSupplier.reorder_suppliers(@supplier_ids.reverse,@first_product))
    @first_product.reload
    assert_equal(@supplier_ids.reverse, @first_product.suppliers.map(&:id))
    
    # indirectly removing the suppliers from the product
    assert_equal(true, ProductSupplier.remove_suppliers(@supplier_ids,@first_product))
    @first_product.reload
    assert_equal(0,ProductSupplier.all.size)
    assert_equal(0,@first_product.suppliers.size)

    # directly removing the suppliers from the product
    assert_equal([],ProductSupplier.assign_suppliers(@supplier_ids,@first_product))
    assert_equal(2,ProductSupplier.all.size)
    all = ProductSupplier.all
    assert_equal(all, ProductSupplier.remove(ProductSupplier.all.map(&:id)))
    assert_equal(0,ProductSupplier.all.size)
    @first_product.reload
    assert_equal(0,@first_product.suppliers.size)
    end
end

