require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_product_index(products,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  Product.stub!(:paginate).and_return(products)
  get 'index'
  assert_list_present(products,:products)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_products_url
end 

def before_product_show(product,categories,images,suppliers,attributes,value,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Product,:find,product)
  has_named_scope(product,:categories,categories)
  has_named_scope(product,:images,images)
  has_named_scope(product,:suppliers,suppliers)
  attribute_accessors(product,attributes)
  get 'show', :id => value
  attributes_match(product,:product,attributes)
  assert_list_present(images,:images,notice)
  assert_list_present(suppliers,:suppliers,notice)
  assert_list_present(categories,:categories,notice)
  assigns[:reorder_url].should == reorder_products_url
end 

def before_product_new(product,attributes)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Product,:new,product) 
  attribute_accessors(product,attributes)
  get 'new'
  attributes_match(product,:product,attributes)
  flash[:notice].should be_nil
  product
end

def before_product_edit(product,attributes,value)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Product,:find,product)
  attribute_accessors(product,attributes)
  get 'edit', :id => value
  attributes_match(product,:product,attributes)
  flash[:notice].should be_nil
  product
end

def before_product_destroy(product,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Product,:find,product)
  has_accessor(product,:destroy,value)
  delete 'destroy', :id => product.id
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_products_url
  product
end

def before_product_update(product,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Product,:find,product)
  has_action(product,:update_attributes,attributes,value) 
  attribute_accessors(product,attributes)

  put 'update', :product =>  attributes, :id => product.id
  assigns[:product].should_not be_new_record
  attributes_match(product,:product,attributes)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_products_url
  product
end

def before_product_create(product,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_action(Product,:new,attributes,product) 
  has_accessor(product,:save,value)
  has_accessor(product,:new_record?,true)
  attribute_accessors(product,attributes)

  post 'create', :product =>  attributes
  assigns[:product].should be_new_record
  attributes_match(product,:product,attributes)
  assigns[:reorder_url].should == reorder_products_url
  assert_flash(notice)
  product
end

def before_product_reorder(products,name,value,notice)
  list = products.map(&:id)
  has_action(Product,:reorder,list,value)
  post 'reorder', {name => list}
  assigns[:reorder_url].should == reorder_products_url
  assert_flash(notice)
end

def before_product_remove(products,name,value,notice)
  list = products.map(&:id)
  has_action(Product,:remove,list,value)
  post 'remove', {name => list}
  assigns[:reorder_url].should == reorder_products_url
  assert_flash(notice)
end

describe ProductsController do
  before do 
    @current_user = stub_login(controller)
    @product  = mock_model(Product)
    @category = mock_model(Category)
    @image    = mock_model(Image)
    @supplier = mock_model(Supplier)
    @attributes = {
      "name" => "A valid product name",      
      "description" => "A valid product description",
    }
    @updated_attributes = {
      "name" => "A new valid category name",      
      "description" => "A new valid product description",
      "id" => @product.id,
    }
  end

    # test index, no branching
    it "should render the index page" do
        before_product_index([@product,@product],"Products found (2).")
        response.should render_template('index')
    end
  
    # test show, no branching
    it "should render the show page" do
    before_product_show(@product,
                [@category,@category],
                [@image,@image],
                [@supplier,@supplier],
                @attributes,
                @product.id,
                "Product has (2) images and (2) suppliers and (2) categories.")
        response.should render_template('show')
    end
  
    # test new, no branching
    it "should render the new page" do
      before_product_new(@product,@attributes)
      response.should render_template('new')
    end
  
    # test edit, no branching
    it "should render the edit page" do
      before_product_edit(@product,@attributes,@product.id)
      response.should render_template('edit')
    end

    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
        [:selected_ids,:all_products].each do |name|
          notice = case value
            when true  : "Products deleted (1)."
            when false : "Deleting product failed due to errors." 
          end
         before_product_destroy(@product,value,notice)
         response.should redirect_to(products_path)
        end
      end
    end
    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      [false,true].each do |value|
        [:selected_ids,:product_ids].each do |name|
          notice = case value
            when true  : "Products removed (2)."
            when false : "Removing products failed due to errors."
          end
          before_product_remove([@product,@product],name,value,notice)
          response.should redirect_to(products_path)
        end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      [false,true].each do |value|
        [:selected_ids,:all_products].each do |name|
          notice = case value
            when true  : "Products reordered (2)."
            when false : "Reordering products failed due to errors."
          end
          before_product_reorder([@product,@product],name,value,notice)
          response.should redirect_to(products_path)
        end
      end
    end
  
    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
      [false,true].each do |value|
        notice = case value
          when true  : "Product was successfully created."
          when false : "Creating product failed due to errors."
        end
        before_product_create(@product,@attributes,value,notice)
        case value
          when true  : response.should redirect_to(products_path) 
          when false : response.should render_template('new')
        end
      end
    end

    # test update, success/failure branch
    it "should redirect to index with a notice on update" do
      [false,true].each do |value|
        notice = case value
          when true  : "Product was successfully updated."
          when false : "Updating product failed due to errors."
        end
        before_product_update(@product,@updated_attributes,value,notice)
        case value
          when true  : response.should redirect_to(products_path) 
          when false : response.should render_template('edit')
        end
      end  
    end
end
__END__
 
