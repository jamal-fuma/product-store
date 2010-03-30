require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_page_product_selected_products(page,pages,images,products)
  before_page_view_helper(page,pages,images,products,:twice)
  ids = [page.id,products.first.id]
end

 # GET /pages/1/products
 # GET /pages/1/products.xml
 def before_page_product_index(page,pages,images,products,notice)
  before_page_view_helper(page,pages,images,products)
  get 'index', :page_id => page.id
  assigns[:reorder_url].should == reorder_page_products_url(page)
  assert_list_present(products,:products,notice)
  assert_flash(notice)
end 

 # POST /pages/1/products
 # POST /pages/1/products.xml
 def before_page_product_create(page,product,notice)
      before_page_product_selected_products(
            page, [page,page], [@image,@image], [product,product])
  has_accessor(PageProduct,:assign_products,[]) 

  post 'create', :page_id => page.id, :product =>{:id => product.id}
  assert_flash(notice)
end

 # DELETE /pages/1/products/1
 # DELETE /pages/1/products/1.xml
 def before_page_product_destroy(page,product,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Page,:find,page)
  has_accessor(product,:destroy,value)
  has_many_association_find(page,:products,[product,product],product)
  delete 'destroy', :page_id => page.id, :id => product.id
  assert_flash(notice)
  page
end

 # DELETE /pages/1/products/remove
 # DELETE /pages/1/products/remove.xml
 def before_page_product_remove(page,ids,value,notice)
  if(value)
    before_page_view_helper(page,
      [page,page], [@image,@image], [@product,@product])
  else
    has_accessor(Page,:find,page,:twice)
  end
  has_accessor(PageProduct,:remove_products,value)
  delete 'remove', :page_id => page.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_page_products_url(page)
  assert_flash(notice)
  page
end

 # POST /pages/1/products/reorder
 # POST /pages/1/products/reorder.xml
 def before_page_product_reorder(page,ids,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  if(value)
  before_page_view_helper(page,
      [page,page],
      [@image,@image],
      [@product,@product])
  else
      has_accessor(Page,:find,page,:twice)
  end
  has_accessor(PageProduct,:reorder_products,value)
  post 'reorder', :page_id => page.id, :all_products => ids
  assert_flash(notice)
  page
end

describe PageProductsController do
  before do 
    @current_user = stub_login(controller)
    @product    = mock_model(Product)
    @page = mock_model(Page)
    @page_product = mock_model(PageProduct)
    @image    = mock_model(Image)

    @attributes = {
      "page_id" => @page.id,
      "product_id" => @product.id      
    }

    @updated_attributes = {
      "id"  => @page_product.id,
      "page_id" => @page.id,
      "product_id" => @product.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_page_product_index(
        @page,
        [@page,@page],
        [@image,@image],
        [@product,@product],
        "Page has (2) products.")
        response.should render_template('index')
    end

    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) products."
        before_page_product_create(@page,@product,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Products deleted (1) from page."
            when false : "Deleting product from page failed due to errors."
          end
         before_page_product_destroy(@page,@product,value,notice)
         response.should redirect_to(page_products_path(@page))
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
          before_page_product_remove(@page,ids,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(page_products_path(@page))
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
          before_page_product_reorder(@page,[@product,@product],value,notice)
          response.should redirect_to(page_products_path(@page))
        end
      end
    end
end

