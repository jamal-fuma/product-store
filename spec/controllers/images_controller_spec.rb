require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_image_index(images,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  Image.stub!(:paginate).and_return(images)
  get 'index'
  assert_list_present(images,:images)
  assert_flash(notice)
end 

def before_image_show(image,categories,products,attributes,value,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Image,:find,image)
  has_named_scope(image,:categories,categories)
  has_named_scope(image,:products,products)
  attribute_accessors(image,attributes)
  get 'show', :id => value
  attributes_match(image,:image,attributes)
  assert_list_present(products,:products,notice)
  assert_list_present(categories,:categories,notice)
end 

def before_image_new(image,attributes)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Image,:new,image) 
  attribute_accessors(image,attributes)
  get 'new'
  attributes_match(image,:image,attributes)
  flash[:notice].should be_nil
  image
end

def before_image_edit(image,attributes,value)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Image,:find,image)
  attribute_accessors(image,attributes)
  get 'edit', :id => value
  attributes_match(image,:image,attributes)
  flash[:notice].should be_nil
  image
end

def before_image_destroy(image,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Image,:find,image)
  has_accessor(image,:destroy,value)
  delete 'destroy', :id => image.id
  assert_flash(notice)
  image
end

def before_image_update(image,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Image,:find,image)
  has_action(image,:update_attributes,attributes,value) 
  attribute_accessors(image,attributes)

  put 'update', :image =>  attributes, :id => image.id
  assigns[:image].should_not be_new_record
  attributes_match(image,:image,attributes)
  assert_flash(notice)
  image
end

def before_image_create(image,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_action(Image,:new,attributes,image) 
  has_accessor(image,:save,value)
  has_accessor(image,:new_record?,true)
  attribute_accessors(image,attributes)

  post 'create', :image =>  attributes
  assigns[:image].should be_new_record
  attributes_match(image,:image,attributes)
  assert_flash(notice)
  image
end

def before_image_reorder(images,name,value,notice)
  list = images.map(&:id)
  has_action(Image,:reorder,list,value)
  post 'reorder', {name => list}
  assert_flash(notice)
end

def before_image_remove(images,name,value,notice)
  list = images.map(&:id)
  has_action(Image,:remove,list,value)
  post 'remove', {name => list}
  assert_flash(notice)
end

describe ImagesController do
  before do 
    @current_user = stub_login(controller)
    @attributes = {
      "name" => "A valid image name",      
      "description" => "A valid image description",
    }
    @updated_attributes = {
      "name" => "A new valid category name",      
      "description" => "A new valid image description",
    }
    @image    = mock_model(Image)
    @category = mock_model(Category)
    @product  = mock_model(Product)
  end

    # test index, no branching
    it "should render the index page" do
        before_image_index([@image,@image],"Images found (2).")
        response.should render_template('index')
    end
  
    # test show, no branching
    it "should render the show page" do
    before_image_show(@image,
                [@category,@category],
                [@product,@product],
                @attributes,
                @image.id,
                "Image has (2) products and (2) categories.")
        response.should render_template('show')
    end
  
    # test new, no branching
    it "should render the new page" do
      before_image_new(@image,@attributes)
      response.should render_template('new')
    end
  
    # test edit, no branching
    it "should render the edit page" do
      before_image_edit(@image,@attributes,@image.id)
      response.should render_template('edit')
    end

    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
        [:selected_ids,:all_images].each do |name|
          notice = case value
            when true  : "Images deleted (1)."
            when false : "Deleting image failed due to errors." 
          end
         before_image_destroy(@image,value,notice)
         response.should redirect_to(images_path)
        end
      end
    end
    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      [false,true].each do |value|
        [:selected_ids,:all_images].each do |name|
          notice = case value
            when true  : "Images removed (2)."
            when false : "Removing images failed due to errors."
          end
          before_image_remove([@image,@image],name,value,notice)
          response.should redirect_to(images_path)
        end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      [false,true].each do |value|
        [:selected_ids,:all_images].each do |name|
          notice = case value
            when true  : "Images reordered (2)."
            when false : "Reordering images failed due to errors."
          end
          before_image_reorder([@image,@image],name,value,notice)
          response.should redirect_to(images_path)
        end
      end
    end
  
    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
      [false,true].each do |value|
        notice = case value
          when true  : "Image was successfully created."
          when false : "Creating image failed due to errors."
        end
        before_image_create(@image,@attributes,value,notice)
        case value
          when true  : response.should redirect_to(images_path) 
          when false : response.should render_template('new')
        end
      end
    end

    # test update, success/failure branch
    it "should redirect to index with a notice on update" do
      [false,true].each do |value|
        notice = case value
          when true  : "Image was successfully updated."
          when false : "Updating image failed due to errors."
        end
        before_image_update(@image,@updated_attributes,value,notice)
        case value
          when true  : response.should redirect_to(images_path) 
          when false : response.should render_template('edit')
        end
      end  
    end
end
__END__
 
