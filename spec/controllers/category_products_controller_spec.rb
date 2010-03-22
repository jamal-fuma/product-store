require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_category_product_selected_products(category,categories,images,products)
  before_category_view_helper(category,categories,images,products,:twice)
  ids = [category.id,products.first.id]
end

 # GET /categories/1/products
 # GET /categories/1/products.xml
 def before_category_product_index(category,categories,images,products,notice)
  before_category_view_helper(category,categories,images,products)
  get 'index', :category_id => category.id
  assigns[:reorder_url].should == reorder_category_products_url(category)
  assert_list_present(products,:products,notice)
  assert_flash(notice)
end 

 # POST /categories/1/products
 # POST /categories/1/products.xml
 def before_category_product_create(category,product,notice)
      before_category_product_selected_products(
            category, [category,category], [@image,@image], [product,product])
  has_accessor(CategoryProduct,:assign_products,[]) 

  post 'create', :category_id => category.id, :product =>{:id => product.id}
  assert_flash(notice)
end

 # DELETE /categories/1/products/1
 # DELETE /categories/1/products/1.xml
 def before_category_product_destroy(category,product,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Category,:find,category)
  has_accessor(product,:destroy,value)
  has_many_association_find(category,:products,[product,product],product)
  delete 'destroy', :category_id => category.id, :id => product.id
  assert_flash(notice)
  category
end

 # DELETE /categories/1/products/remove
 # DELETE /categories/1/products/remove.xml
 def before_category_product_remove(category,ids,value,notice)
  if(value)
    before_category_view_helper(category,
      [category,category], [@image,@image], [@product,@product])
  else
    has_accessor(Category,:find,category,:twice)
  end
  has_accessor(CategoryProduct,:remove_products,value)
  delete 'remove', :category_id => category.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_category_products_url(category)
  assert_flash(notice)
  category
end

 # POST /categories/1/products/reorder
 # POST /categories/1/products/reorder.xml
 def before_category_product_reorder(category,ids,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  if(value)
  before_category_view_helper(category,
      [category,category],
      [@image,@image],
      [@product,@product])
  else
      has_accessor(Category,:find,category,:twice)
  end
  has_accessor(CategoryProduct,:reorder_products,value)
  post 'reorder', :category_id => category.id, :all_products => ids
  assert_flash(notice)
  category
end

describe CategoryProductsController do
  before do 
    @current_user = stub_login(controller)
    @product    = mock_model(Product)
    @category = mock_model(Category)
    @category_product = mock_model(CategoryProduct)
    @image    = mock_model(Image)

    @attributes = {
      "category_id" => @category.id,
      "product_id" => @product.id      
    }

    @updated_attributes = {
      "id"  => @category_product.id,
      "category_id" => @category.id,
      "product_id" => @product.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_category_product_index(
        @category,
        [@category,@category],
        [@image,@image],
        [@product,@product],
        "Category has (2) products.")
        response.should render_template('index')
    end

    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) products."
        before_category_product_create(@category,@product,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Products deleted (1) from category."
            when false : "Deleting product from category failed due to errors."
          end
         before_category_product_destroy(@category,@product,value,notice)
         response.should redirect_to(category_products_path(@category))
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
          before_category_product_remove(@category,ids,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(category_products_path(@category))
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
          before_category_product_reorder(@category,[@product,@product],value,notice)
          response.should redirect_to(category_products_path(@category))
        end
      end
    end
end

