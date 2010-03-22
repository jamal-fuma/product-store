require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

  def before_image_category_selected_categories(image,categories,products)
  before_image_view_helper(image,categories,products,:twice)
  ids = [image.id,categories.first.id]
end

 # GET /images/1/categories
 # GET /images/1/categories.xml
 def before_image_category_index(image,categories,products,notice)
  before_image_view_helper(image,categories,products)
  get 'index', :image_id => image.id
  assigns[:reorder_url].should == reorder_image_categories_url(image)
  assert_list_present(categories,:categories,notice)
  assert_flash(notice)
end 

 # POST /images/1/categories
 # POST /images/1/categories.xml
 def before_image_category_create(image,category,notice)
  before_image_category_selected_categories(image,
      [category,category],
      [@product,@product])
  
  has_accessor(ImageCategory,:assign_categories,[]) 
  post 'create', :image_id => image.id, :category => {:id => category.id}
  assigns[:reorder_url].should == reorder_image_categories_url(image)
  assert_flash(notice)
end

 # DELETE /images/1/categories/1
 # DELETE /images/1/categories/1.xml
 def before_image_category_destroy(image,category,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Image,:find,image)
  has_accessor(category,:destroy,value)
  has_many_association_find(image,:categories,[category,category],category)
  delete 'destroy', :image_id => image.id, :id => category.id
  assert_flash(notice)
  image
end

 # DELETE /images/1/categories/remove
 # DELETE /images/1/categories/remove.xml
 def before_image_category_remove(image,ids,name,value,notice)
  if(value)
  before_image_view_helper(image,
      [@category,@category],
      [@product,@product])
  else
    has_accessor(Image,:find,image,:twice)
  end
  
  has_accessor(ImageCategory,:remove_categories,value)
  delete 'remove', :image_id => image.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_image_categories_url(image)
  assert_flash(notice)
  image
end

 # POST /images/1/categories/reorder
 # POST /images/1/categories/reorder.xml
 def before_image_category_reorder(image,ids,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  if(value)
  before_image_view_helper(image,
      [@category,@category],
      [@product,@product])
  else
    has_accessor(Image,:find,image,:twice)
  end
  
  has_accessor(ImageCategory,:reorder_categories,value)
  post 'reorder', :image_id => image.id, :all_categories => ids
  assigns[:reorder_url].should == reorder_image_categories_url(image)
  assert_flash(notice)
  image
end

describe ImageCategoriesController do
  before do 
    @current_user = stub_login(controller)
    @product = mock_model(Product)
    @category    = mock_model(Category)
    @image_category = mock_model(ImageCategory)
    @image = mock_model(Image)

    @attributes = {
      "image_id" => @image.id,
      "category_id" => @category.id      
    }
    @updated_attributes = {
      "id"  => @image_category.id,
      "image_id" => @image.id,
      "category_id" => @category.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_image_category_index(
        @image,
        [@category,@category],
        [@product,@product],
        "Image has (2) categories.")
        response.should render_template('index')
    end

  # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) categories."
        before_image_category_create(@image,@category,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Categories deleted (1) from image."
            when false : "Deleting category from image failed due to errors."
          end
         before_image_category_destroy(@image,@category,value,notice)
         response.should redirect_to(image_categories_path(@image))
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
          before_image_category_remove(@image,ids,name,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(image_categories_path(@image))
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
          before_image_category_reorder(@image,[@category,@category],value,notice)
          response.should redirect_to(image_categories_path(@image))
        end
      end
    end
end

