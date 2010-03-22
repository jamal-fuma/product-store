require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_category_index(categories,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_named_scope(Category,:parents,categories)
  get 'index'
  assert_list_present(categories,:categories)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_categories_url
end 

def before_category_show(category,categories,images,products,attributes,value,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Category,:find,category)
  has_named_scope(category,:children,categories)
  has_named_scope(category,:images,images)
  has_named_scope(category,:products,products)
  attribute_accessors(category,attributes)
  get 'show', :id => value
  attributes_match(category,:category,attributes)
  assert_list_present(images,:images,notice)
  assert_list_present(products,:products,notice)
  assert_list_present(categories,:categories,notice)
  assigns[:reorder_url].should == reorder_categories_url
end 

def before_category_new(category,attributes)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Category,:new,category) 
  attribute_accessors(category,attributes)
  get 'new'
  attributes_match(category,:category,attributes)
  flash[:notice].should be_nil
  category
end

def before_category_edit(category,attributes,value)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Category,:find,category)
  attribute_accessors(category,attributes)
  get 'edit', :id => value
  attributes_match(category,:category,attributes)
  flash[:notice].should be_nil
  category
end

def before_category_destroy(category,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Category,:find,category)
  has_accessor(category,:destroy,value)
  delete 'destroy', :id => category.id
  assert_flash(notice)
  category
  assigns[:reorder_url].should == reorder_categories_url
end

def before_category_update(category,attributes,value,notice)
  # stub find method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Category,:find,category)
  has_action(category,:update_attributes,attributes,value) 
  attribute_accessors(category,attributes)

  put 'update', :id => category.id, :category => attributes
  assigns[:category].should_not be_new_record
  attributes_match(category,:category,attributes)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_categories_url
 category
end

def before_category_create(category,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_action(Category,:new,attributes,category) 
  has_accessor(category,:save,value)
  has_accessor(category,:new_record?,true)
  attribute_accessors(category,attributes)

  post 'create', :category =>  attributes
  assigns[:category].should be_new_record
  attributes_match(category,:category,attributes)
  assigns[:reorder_url].should == reorder_categories_url
  assert_flash(notice)
  category
end

def before_category_reorder(categories,name,value,notice)
  list = categories.map(&:id)
  has_action(Category,:reorder,list,value)
  post 'reorder', {name => list}
  assigns[:reorder_url].should == reorder_categories_url
  assert_flash(notice)
end

def before_category_remove(categories,name,value,notice)
  list = categories.map(&:id)
  has_action(Category,:remove,list,value)
  post 'remove', {name => list}
  assigns[:reorder_url].should == reorder_categories_url
  assert_flash(notice)
end

describe CategoriesController do
  before do 
    @current_user = stub_login(controller)
    @product  = mock_model(Product)
    @category = mock_model(Category)
    @image    = mock_model(Image)
    @attributes = {
      "name" => "A valid category name",      
      "description" => "A valid category description",
      "parent" => nil
    }
    @updated_attributes = {
      "name" => "A new valid category name",      
      "description" => "A new valid category description",
      "id" => @category.id,
      "parent" => 1
    }
  end

    # test index, no branching
    it "should render the index page" do
        before_category_index([@category,@category],"Categories found (2).")
        response.should render_template('index')
    end

    # test show, no branching
    it "should render the show page" do
    before_category_show(@category,
                [@category,@category],
                [@product,@product],
                [@image,@image],
                @attributes,
                @category.id,
                "Category has (2) images and (2) products and (2) categories.")
        response.should render_template('show')
    end

   # test new, no branching
    it "should render the new page" do
      before_category_new(@category,@attributes)
      response.should render_template('new')
    end
  
    # test edit, no branching
    it "should render the edit page" do
      before_category_edit(@category,@attributes,@category.id)
      response.should render_template('edit')
    end

    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
        [:selected_ids,:all_categories].each do |name|
          notice = case value
            when true  : "Categories deleted (1)."
            when false : "Deleting category failed due to errors." 
          end
         before_category_destroy(@category,value,notice)
         response.should redirect_to(categories_path)
        end
      end
    end
    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      [false,true].each do |value|
        [:selected_ids,:category_ids].each do |name|
          notice = case value
            when true  : "Categories removed (2)."
            when false : "Removing categories failed due to errors."
          end
          before_category_remove([@category,@category],name,value,notice)
          response.should redirect_to(categories_path)
        end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      [false,true].each do |value|
        [:selected_ids,:all_categories].each do |name|
          notice = case value
            when true  : "Categories reordered (2)."
            when false : "Reordering categories failed due to errors."
          end
          before_category_reorder([@category,@category],name,value,notice)
          response.should redirect_to(categories_path)
        end
      end
    end
  
    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
      [false,true].each do |value|
        notice = case value
          when true  : "Category was successfully created."
          when false : "Saving category failed due to errors."
        end
        before_category_create(@category,@attributes,value,notice)
        case value
          when true  : response.should redirect_to(categories_path) 
          when false : response.should render_template('new')
        end
      end
    end

    # test update, success/failure branch
    it "should redirect to index with a notice on update" do
      [false,true].each do |value|
        notice = case value
          when true  : "Category was successfully updated."
          when false : "Updating category failed due to errors."
        end
        before_category_update(@category,@updated_attributes,value,notice)
        case value
          when true  : response.should redirect_to(categories_path) 
          when false : response.should render_template('edit')
        end
      end
    end
end
