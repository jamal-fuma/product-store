require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_product_category_selected_categories(product,categories,images,suppliers)
  before_product_view_helper(product,categories,images,suppliers,:twice)
  ids = [product.id,categories.first.id]
end

 # GET /products/1/categories
 # GET /products/1/categories.xml
 def before_product_category_index(product,categories,images,suppliers,notice)
  before_product_view_helper(product,categories,images,suppliers)
  get 'index', :product_id => product.id
  assigns[:reorder_url].should == reorder_product_categories_url(product)
  assert_list_present(categories,:categories,notice)
  assert_flash(notice)
end 

 # POST /products/1/categories
 # POST /products/1/categories.xml
 def before_product_category_create(product,category,notice)
  before_product_category_selected_categories(product,
      [category,category],
      [@image,@image],
      [@supplier,@supplier])
  has_accessor(ProductCategory,:assign_categories,[]) 
  post 'create', :product_id => product.id, :category => {:id => category.id}
  assigns[:reorder_url].should == reorder_product_categories_url(product)
  assert_flash(notice)
end

 # DELETE /products/1/categories/1
 # DELETE /products/1/categories/1.xml
 def before_product_category_destroy(product,category,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Product,:find,product)
  has_accessor(category,:destroy,value)
  has_many_association_find(product,:categories,[category,category],category)
  delete 'destroy', :product_id => product.id, :id => category.id
  assert_flash(notice)
  product
end

 # DELETE /products/1/categories/remove
 # DELETE /products/1/categories/remove.xml
 def before_product_category_remove(product,ids,name,value,notice)
  if(value)
  before_product_view_helper(product,
      [@category,@category],
      [@image,@image],
      [@supplier,@supplier])
  else
    has_accessor(Product,:find,product,:twice)
  end
  has_accessor(ProductCategory,:remove_categories,value)
  delete 'remove', :product_id => product.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_product_categories_url(product)
  assert_flash(notice)
  product
end

 # POST /products/1/categories/reorder
 # POST /products/1/categories/reorder.xml
 def before_product_category_reorder(product,ids,value,notice)
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
  has_accessor(ProductCategory,:reorder_categories,value)
  post 'reorder', :product_id => product.id, :all_categories => ids
  assigns[:reorder_url].should == reorder_product_categories_url(product)
  assert_flash(notice)
  product
end

describe ProductCategoriesController do
  before do 
    @current_user = stub_login(controller)
    @product = mock_model(Product)
    @category    = mock_model(Category)
    @product_category = mock_model(ProductCategory)
    @image = mock_model(Image)
    @supplier    = mock_model(Supplier)

    @attributes = {
      "product_id" => @product.id,
      "category_id" => @category.id      
    }
    @updated_attributes = {
      "id"  => @product_category.id,
      "product_id" => @product.id,
      "category_id" => @category.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_product_category_index(
        @product,
        [@category,@category],
        [@image,@image],
        [@supplier,@supplier],
        "Product has (2) categories.")
        response.should render_template('index')
    end

  # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) categories."
        before_product_category_create(@product,@category,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Categories deleted (1) from product."
            when false : "Deleting category from product failed due to errors."
          end
         before_product_category_destroy(@product,@category,value,notice)
         response.should redirect_to(product_categories_path(@product))
      end
    end

    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      ids = [@category,@category].map(&:id)
      [false,true].each do |value|
          notice = case value
            when true  : "Categories removed (#{ids.uniq.size})."
            when false : "Removing categories failed due to errors."
          end
          before_product_category_remove(@product,ids,name,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(product_categories_path(@product))
          end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      ids = [@category,@category].map(&:id)
      [false,true].each do |value|
        [:all_categories].each do |name|
          notice = case value
            when true  : "Categories reordered (#{ids.uniq.size})."
            when false : "Reordering categories failed due to errors."
          end
          before_product_category_reorder(@product,[@category,@category],value,notice)
          response.should redirect_to(product_categories_path(@product))
        end
      end
    end
end

