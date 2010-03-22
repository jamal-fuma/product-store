require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_product_supplier_selected_suppliers(product,categories,images,suppliers)
  before_product_view_helper(product,categories,images,suppliers,:twice)
  ids = [product.id,suppliers.first.id]
end

 # GET /products/1/suppliers
 # GET /products/1/suppliers.xml
 def before_product_supplier_index(product,categories,images,suppliers,notice)
  before_product_view_helper(product,categories,images,suppliers)
  get 'index', :product_id => product.id
  assigns[:reorder_url].should == reorder_product_suppliers_url(product)
  assert_list_present(suppliers,:suppliers,notice)
  assert_flash(notice)
end 

 # POST /products/1/suppliers
 # POST /products/1/suppliers.xml
 def before_product_supplier_create(product,supplier,notice)
  before_product_supplier_selected_suppliers(product,
      [@category,@category],
      [@image,@image],
      [supplier,supplier])
  has_accessor(ProductSupplier,:assign_suppliers,[]) 

  post 'create', :product_id => product.id, :supplier => {:id => supplier.id}
  assert_flash(notice)
end

 # DELETE /products/1/suppliers/1
 # DELETE /products/1/suppliers/1.xml
 def before_product_supplier_destroy(product,supplier,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Product,:find,product)
  has_accessor(supplier,:destroy,value)
  has_many_association_find(product,:suppliers,[supplier,supplier],supplier)
  delete 'destroy', :product_id => product.id, :id => supplier.id
  assert_flash(notice)
  product
end

 # DELETE /products/1/suppliers/remove
 # DELETE /products/1/suppliers/remove.xml
 def before_product_supplier_remove(product,ids,value,notice)
  if(value)
  before_product_view_helper(product,
      [@category,@category],
      [@image,@image],
      [@supplier,@supplier])
  else
    has_accessor(Product,:find,product,:twice)
  end
  has_accessor(ProductSupplier,:remove_suppliers,value)
  delete 'remove', :product_id => product.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_product_suppliers_url(product)
  assert_flash(notice)
  product
end

 # POST /products/1/suppliers/reorder
 # POST /products/1/suppliers/reorder.xml
 def before_product_supplier_reorder(product,ids,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  if(value)
  before_product_view_helper(product,
      [@category,@category],
      [@image,@image],
      [@supplier,@supplier])
  else
    has_accessor(Product,:find,product,:twice)
  end
  has_accessor(ProductSupplier,:reorder_suppliers,value)
  post 'reorder', :product_id => product.id, :all_suppliers => ids
  assigns[:reorder_url].should == reorder_product_suppliers_url(product)
  assert_flash(notice)
  product
end

describe ProductSuppliersController do
  before do 
    @current_user = stub_login(controller)
    @product = mock_model(Product)
    @category = mock_model(Category)
    @product_supplier = mock_model(ProductSupplier)
    @image    = mock_model(Image)
    @supplier    = mock_model(Supplier)

    @attributes = {
      "product_id" => @product.id,
      "supplier_id" => @supplier.id      
    }
    @updated_attributes = {
      "id"  => @product_supplier.id,
      "product_id" => @product.id,
      "supplier_id" => @supplier.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_product_supplier_index(
        @product,
        [@category,@category],
        [@image,@image],
        [@supplier,@supplier],
        "Product has (2) suppliers.")
        response.should render_template('index')
    end

    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) suppliers."
        before_product_supplier_create(@product,@supplier,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Suppliers deleted (1) from product."
            when false : "Deleting supplier from product failed due to errors."
          end
         before_product_supplier_destroy(@product,@supplier,value,notice)
         response.should redirect_to(product_suppliers_path(@product))
      end
    end

    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      ids = [@supplier,@supplier].map(&:id)
      [false,true].each do |value|
          notice = case value
            when true  : "Suppliers removed (#{ids.uniq.size})."
            when false : "Removing suppliers failed due to errors."
          end
          before_product_supplier_remove(@product,ids,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(product_suppliers_path(@product))
          end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      ids = [@supplier,@supplier].map(&:id)
      [false,true].each do |value|
        [:all_suppliers].each do |name|
          notice = case value
            when true  : "Suppliers reordered (#{ids.uniq.size})."
            when false : "Reordering suppliers failed due to errors."
          end
          before_product_supplier_reorder(@product,[@supplier,@supplier],value,notice)
          response.should redirect_to(product_suppliers_path(@product))
        end
      end
    end
end

