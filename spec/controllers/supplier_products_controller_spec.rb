require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_supplier_product_selected_products(supplier,products)
  before_supplier_view_helper(supplier,products,:twice)
  ids = [supplier.id,products.first.id]
end

 # GET /suppliers/1/products
 # GET /suppliers/1/products.xml
 def before_supplier_product_index(supplier,products,notice)
  before_supplier_view_helper(supplier,products)
  get 'index', :supplier_id => supplier.id
  assigns[:reorder_url].should == reorder_supplier_products_url(supplier)
  assert_list_present(products,:products,notice)
  assert_flash(notice)
end 

 # POST /suppliers/1/products
 # POST /suppliers/1/products.xml
 def before_supplier_product_create(supplier,product,notice)
      before_supplier_product_selected_products(
            supplier, [product,product])
  has_accessor(SupplierProduct,:assign_products,[]) 

  post 'create', :supplier_id => supplier.id, :product =>{:id => product.id}
  assert_flash(notice)
end

 # DELETE /suppliers/1/products/1
 # DELETE /suppliers/1/products/1.xml
 def before_supplier_product_destroy(supplier,product,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Supplier,:find,supplier)
  has_accessor(product,:destroy,value)
  has_many_association_find(supplier,:products,[product,product],product)
  delete 'destroy', :supplier_id => supplier.id, :id => product.id
  assert_flash(notice)
  supplier
end

 # DELETE /suppliers/1/products/remove
 # DELETE /suppliers/1/products/remove.xml
 def before_supplier_product_remove(supplier,ids,value,notice)
  if(value)
    before_supplier_view_helper(supplier,
      [@product,@product])
  else
    has_accessor(Supplier,:find,supplier,:twice)
  end
  has_accessor(SupplierProduct,:remove_products,value)
  delete 'remove', :supplier_id => supplier.id, :selected_ids => ids
  assert_flash(notice)
  supplier
end

 # POST /suppliers/1/products/reorder
 # POST /suppliers/1/products/reorder.xml
 def before_supplier_product_reorder(supplier,ids,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  if(value)
  before_supplier_view_helper(supplier,
      [@product,@product])
  else
  has_accessor(Supplier,:find,supplier,:twice)
  end
  has_accessor(SupplierProduct,:reorder_products,value)
  post 'reorder',  :supplier_id => supplier.id, :all_products => ids
  assert_flash(notice)
  supplier
end

describe SupplierProductsController do
  before do 
    @current_user = stub_login(controller)
    @product    = mock_model(Product)
    @supplier = mock_model(Supplier)
    @supplier_product = mock_model(SupplierProduct)
    @image    = mock_model(Image)

    @attributes = {
      "supplier_id" => @supplier.id,
      "product_id" => @product.id      
    }

    @updated_attributes = {
      "id"  => @supplier_product.id,
      "supplier_id" => @supplier.id,
      "product_id" => @product.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_supplier_product_index(
        @supplier,
        [@product,@product],
        "Supplier has (2) products.")
        response.should render_template('index')
    end

    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) products."
        before_supplier_product_create(@supplier,@product,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Products deleted (1) from supplier."
            when false : "Deleting product from supplier failed due to errors."
          end
         before_supplier_product_destroy(@supplier,@product,value,notice)
         response.should redirect_to(supplier_products_path(@supplier))
      end
    end

    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      ids = [@product,@product].map(&:id)
      [false,true].each do |value|
          notice = case value
            when true  : "Products removed (#{ids.uniq.size})."
            when false : "Removing products failed due to errors."
          end
          before_supplier_product_remove(@supplier,ids,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(supplier_products_path(@supplier))
          end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      ids = [@product,@product].map(&:id)
      [false,true].each do |value|
        [:all_products].each do |name|
          notice = case value
            when true  : "Products reordered (#{ids.uniq.size})."
            when false : "Reordering products failed due to errors."
          end
          before_supplier_product_reorder(@supplier,[@product,@product],value,notice)
          response.should redirect_to(supplier_products_path(@supplier))
        end
      end
    end
end

