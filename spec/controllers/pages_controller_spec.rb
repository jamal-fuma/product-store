
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_page_index(pages,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_named_scope(Page,:parents,pages)
  get 'index'
  assert_list_present(pages,:pages)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_pages_url
end 

def before_page_show(page,pages,images,products,attributes,value,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Page,:find,page)
  has_named_scope(page,:children,pages)
  has_named_scope(page,:images,images)
  has_named_scope(page,:products,products)
  attribute_accessors(page,attributes)
  get 'show', :id => value
  attributes_match(page,:page,attributes)
  assert_list_present(images,:images,notice)
  assert_list_present(products,:products,notice)
  assert_list_present(pages,:pages,notice)
  assigns[:reorder_url].should == reorder_pages_url
end 

def before_page_new(page,attributes)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Page,:new,page) 
  attribute_accessors(page,attributes)
  get 'new'
  attributes_match(page,:page,attributes)
  flash[:notice].should be_nil
  page
end

def before_page_edit(page,attributes,value)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Page,:find,page)
  attribute_accessors(page,attributes)
  get 'edit', :id => value
  attributes_match(page,:page,attributes)
  flash[:notice].should be_nil
  page
end

def before_page_destroy(page,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Page,:find,page)
  has_accessor(page,:destroy,value)
  delete 'destroy', :id => page.id
  assert_flash(notice)
  page
  assigns[:reorder_url].should == reorder_pages_url
end

def before_page_update(page,attributes,value,notice)
  # stub find method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Page,:find,page)
  has_action(page,:update_attributes,attributes,value) 
  attribute_accessors(page,attributes)

  put 'update', :id => page.id, :page => attributes
  assigns[:page].should_not be_new_record
  attributes_match(page,:page,attributes)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_pages_url
 page
end

def before_page_create(page,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_action(Page,:new,attributes,page) 
  has_accessor(page,:save,value)
  has_accessor(page,:new_record?,true)
  attribute_accessors(page,attributes)

  post 'create', :page =>  attributes
  assigns[:page].should be_new_record
  attributes_match(page,:page,attributes)
  assigns[:reorder_url].should == reorder_pages_url
  assert_flash(notice)
  page
end

def before_page_reorder(pages,name,value,notice)
  list = pages.map(&:id)
  has_action(Page,:reorder,list,value)
  post 'reorder', {name => list}
  assigns[:reorder_url].should == reorder_pages_url
  assert_flash(notice)
end

def before_page_remove(pages,name,value,notice)
  list = pages.map(&:id)
  has_action(Page,:remove,list,value)
  post 'remove', {name => list}
  assigns[:reorder_url].should == reorder_pages_url
  assert_flash(notice)
end

describe PagesController do
  before do 
    @current_user = stub_login(controller)
    @product  = mock_model(Product)
    @page = mock_model(Page)
    @image    = mock_model(Image)
    @attributes = {
      "name" => "A valid page name",      
      "description" => "A valid page description",
      "parent" => nil
    }
    @updated_attributes = {
      "name" => "A new valid page name",      
      "description" => "A new valid page description",
      "id" => @page.id,
      "parent" => 1
    }
  end

    # test index, no branching
    it "should render the index page" do
        before_page_index([@page,@page],"Pages found (2).")
        response.should render_template('index')
    end

    # test show, no branching
    it "should render the show page" do
    before_page_show(@page,
                [@page,@page],
                [@product,@product],
                [@image,@image],
                @attributes,
                @page.id,
                "Page has (2) images and (2) products and (2) pages.")
        response.should render_template('show')
    end

   # test new, no branching
    it "should render the new page" do
      before_page_new(@page,@attributes)
      response.should render_template('new')
    end
  
    # test edit, no branching
    it "should render the edit page" do
      before_page_edit(@page,@attributes,@page.id)
      response.should render_template('edit')
    end

    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
        [:selected_ids,:all_pages].each do |name|
          notice = case value
            when true  : "Pages deleted (1)."
            when false : "Deleting page failed due to errors." 
          end
         before_page_destroy(@page,value,notice)
         response.should redirect_to(pages_path)
        end
      end
    end
    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      [false,true].each do |value|
        [:selected_ids,:page_ids].each do |name|
          notice = case value
            when true  : "Pages removed (2)."
            when false : "Removing pages failed due to errors."
          end
          before_page_remove([@page,@page],name,value,notice)
          response.should redirect_to(pages_path)
        end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      [false,true].each do |value|
        [:selected_ids,:all_pages].each do |name|
          notice = case value
            when true  : "Pages reordered (2)."
            when false : "Reordering pages failed due to errors."
          end
          before_page_reorder([@page,@page],name,value,notice)
          response.should redirect_to(pages_path)
        end
      end
    end
  
    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
      [false,true].each do |value|
        notice = case value
          when true  : "Page was successfully created."
          when false : "Saving page failed due to errors."
        end
        before_page_create(@page,@attributes,value,notice)
        case value
          when true  : response.should redirect_to(pages_path) 
          when false : response.should render_template('new')
        end
      end
    end

    # test update, success/failure branch
    it "should redirect to index with a notice on update" do
      [false,true].each do |value|
        notice = case value
          when true  : "Page was successfully updated."
          when false : "Updating page failed due to errors."
        end
        before_page_update(@page,@updated_attributes,value,notice)
        case value
          when true  : response.should redirect_to(pages_path) 
          when false : response.should render_template('edit')
        end
      end
    end
end

