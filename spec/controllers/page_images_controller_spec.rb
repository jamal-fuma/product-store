require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_page_image_selected_images(page,pages,images,products)
  before_page_view_helper(page,pages,images,products,:twice)
  ids = [page.id,images.first.id]
end

 # GET /pages/1/images
 # GET /pages/1/images.xml
 def before_page_image_index(page,pages,images,products,notice)
  before_page_view_helper(page,pages,images,products)
  get 'index', :page_id => page.id
  assigns[:reorder_url].should == reorder_page_images_url(page)
  assert_list_present(images,:images,notice)
  assert_flash(notice)
end 

 # POST /pages/1/images
 # POST /pages/1/images.xml
 def before_page_image_create(page,image,notice)
      before_page_image_selected_images(
            page, [page,page], [image,image], [@product,@product])
  has_accessor(PageImage,:assign_images,[]) 

  post 'create', :page_id => page.id, :image =>{:id => image.id}
  assert_flash(notice)
end

 # DELETE /pages/1/images/1
 # DELETE /pages/1/images/1.xml
 def before_page_image_destroy(page,image,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Page,:find,page)
  has_accessor(image,:destroy,value)
  has_many_association_find(page,:images,[image,image],image)
  delete 'destroy', :page_id => page.id, :id => image.id
  assert_flash(notice)
  page
end

 # DELETE /pages/1/images/remove
 # DELETE /pages/1/images/remove.xml
 def before_page_image_remove(page,ids,value,notice)
  if(value)
    before_page_view_helper(page,
      [page,page], [@image,@image], [@product,@product])
  else
    has_accessor(Page,:find,page,:twice)
  end
  has_accessor(PageImage,:remove_images,value)
  delete 'remove', :page_id => page.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_page_images_url(page)
  assert_flash(notice)
  page
end

 # POST /pages/1/images/reorder
 # POST /pages/1/images/reorder.xml
 def before_page_image_reorder(page,ids,value,notice)
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
  has_accessor(PageImage,:reorder_images,value)
  post 'reorder', :page_id => page.id, :all_images => ids
  assert_flash(notice)
  page
end

describe PageImagesController do
  before do 
    @current_user = stub_login(controller)
    @product    = mock_model(Product)
    @page = mock_model(Page)
    @page_image = mock_model(PageImage)
    @image    = mock_model(Image)

    @attributes = {
      "page_id" => @page.id,
      "image_id" => @image.id      
    }

    @updated_attributes = {
      "id"  => @page_image.id,
      "page_id" => @page.id,
      "image_id" => @image.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_page_image_index(
        @page,
        [@page,@page],
        [@image,@image],
        [@product,@product],
        "Page has (2) images.")
        response.should render_template('index')
    end

    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) images."
        before_page_image_create(@page,@image,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Images deleted (1) from page."
            when false : "Deleting image from page failed due to errors."
          end
         before_page_image_destroy(@page,@image,value,notice)
         response.should redirect_to(page_images_path(@page))
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
          before_page_image_remove(@page,ids,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(page_images_path(@page))
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
          before_page_image_reorder(@page,[@image,@image],value,notice)
          response.should redirect_to(page_images_path(@page))
        end
      end
    end
end

