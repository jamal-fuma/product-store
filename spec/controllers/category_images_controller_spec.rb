require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_category_image_selected_images(category,categories,images,products)
  before_category_view_helper(category,categories,images,products,:twice)
  ids = [category.id,images.first.id]
end

 # GET /categories/1/images
 # GET /categories/1/images.xml
 def before_category_image_index(category,categories,images,products,notice)
  before_category_view_helper(category,categories,images,products)
  get 'index', :category_id => category.id
  assigns[:reorder_url].should == reorder_category_images_url(category)
  assert_list_present(images,:images,notice)
  assert_flash(notice)
end 

 # POST /categories/1/images
 # POST /categories/1/images.xml
 def before_category_image_create(category,image,notice)
      before_category_image_selected_images(
            category, [category,category], [image,image], [@product,@product])
  has_accessor(CategoryImage,:assign_images,[]) 

  post 'create', :category_id => category.id, :image =>{:id => image.id}
  assert_flash(notice)
end

 # DELETE /categories/1/images/1
 # DELETE /categories/1/images/1.xml
 def before_category_image_destroy(category,image,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Category,:find,category)
  has_accessor(image,:destroy,value)
  has_many_association_find(category,:images,[image,image],image)
  delete 'destroy', :category_id => category.id, :id => image.id
  assert_flash(notice)
  category
end

 # DELETE /categories/1/images/remove
 # DELETE /categories/1/images/remove.xml
 def before_category_image_remove(category,ids,value,notice)
  if(value)
    before_category_view_helper(category,
      [category,category], [@image,@image], [@product,@product])
  else
    has_accessor(Category,:find,category,:twice)
  end
  has_accessor(CategoryImage,:remove_images,value)
  delete 'remove', :category_id => category.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_category_images_url(category)
  assert_flash(notice)
  category
end

 # POST /categories/1/images/reorder
 # POST /categories/1/images/reorder.xml
 def before_category_image_reorder(category,ids,value,notice)
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
  has_accessor(CategoryImage,:reorder_images,value)
  post 'reorder', :category_id => category.id, :all_images => ids
  assert_flash(notice)
  category
end

describe CategoryImagesController do
  before do 
    @current_user = stub_login(controller)
    @product    = mock_model(Product)
    @category = mock_model(Category)
    @category_image = mock_model(CategoryImage)
    @image    = mock_model(Image)

    @attributes = {
      "category_id" => @category.id,
      "image_id" => @image.id      
    }

    @updated_attributes = {
      "id"  => @category_image.id,
      "category_id" => @category.id,
      "image_id" => @image.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_category_image_index(
        @category,
        [@category,@category],
        [@image,@image],
        [@product,@product],
        "Category has (2) images.")
        response.should render_template('index')
    end

    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) images."
        before_category_image_create(@category,@image,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Images deleted (1) from category."
            when false : "Deleting image from category failed due to errors."
          end
         before_category_image_destroy(@category,@image,value,notice)
         response.should redirect_to(category_images_path(@category))
      end
    end

    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      ids = [@image,@image].map(&:id)
      [false,true].each do |value|
          notice = case value
            when true  : "Images removed (#{ids.uniq.size})."
            when false : "Removing images failed due to errors."
          end
          before_category_image_remove(@category,ids,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(category_images_path(@category))
          end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      ids = [@image,@image].map(&:id)
      [false,true].each do |value|
        [:all_images].each do |name|
          notice = case value
            when true  : "Images reordered (#{ids.uniq.size})."
            when false : "Reordering images failed due to errors."
          end
          before_category_image_reorder(@category,[@image,@image],value,notice)
          response.should redirect_to(category_images_path(@category))
        end
      end
    end
end

