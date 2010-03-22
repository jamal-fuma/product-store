require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_product_image_selected_images(product,categories,images,suppliers)
  before_product_view_helper(product,categories,images,suppliers,:twice)
  ids = [product.id,images.first.id]
end

 # GET /products/1/images
 # GET /products/1/images.xml
 def before_product_image_index(product,categories,images,suppliers,notice)
  before_product_view_helper(product,categories,images,suppliers)
  get 'index', :product_id => product.id
  assigns[:reorder_url].should == reorder_product_images_url(product)
  assert_list_present(images,:images,notice)
  assert_flash(notice)
end 

 # POST /products/1/images
 # POST /products/1/images.xml
 def before_product_image_create(product,image,notice)
  before_product_image_selected_images(product,
      [@category,@category],
      [image,image],
      [@supplier,@supplier])
  has_accessor(ProductImage,:assign_images,[])

  post 'create', :product_id => product.id, :image => {:id => image.id}
  assert_flash(notice)
end

 # DELETE /products/1/images/1
 # DELETE /products/1/images/1.xml
 def before_product_image_destroy(product,image,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Product,:find,product)
  has_accessor(image,:destroy,value)
  has_many_association_find(product,:images,[image,image],image)
  delete 'destroy', :product_id => product.id, :id => image.id
  assert_flash(notice)
  product
end

 # DELETE /products/1/images/remove
 # DELETE /products/1/images/remove.xml
 def before_product_image_remove(product,ids,value,notice)
  if(value)
  before_product_view_helper(product,
      [@category,@category],
      [@image,@image],
      [@supplier,@supplier])
  else
    has_accessor(Product,:find,product,:twice)
  end
  has_accessor(ProductImage,:remove_images,value)
  delete 'remove', :product_id => product.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_product_images_url(product)
  assert_flash(notice)
  product
end

 # POST /products/1/images/reorder
 # POST /products/1/images/reorder.xml
 def before_product_image_reorder(product,ids,value,notice)
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
  has_accessor(ProductImage,:reorder_images,value)
  post 'reorder', :product_id => product.id, :all_images => ids
  assigns[:reorder_url].should == reorder_product_images_url(product)
  assert_flash(notice)
  product
end

describe ProductImagesController do
  before do 
    @current_user = stub_login(controller)
    @product = mock_model(Product)
    @category    = mock_model(Category)
    @product_image = mock_model(ProductImage)
    @image    = mock_model(Image)
    @supplier    = mock_model(Supplier)

    @attributes = {
      "product_id" => @product.id,
      "image_id" => @image.id      
    }
    @updated_attributes = {
      "id"  => @product_image.id,
      "product_id" => @product.id,
      "image_id" => @image.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_product_image_index(
        @product,
        [@category,@category],
        [@image,@image],
        [@supplier,@supplier],
        "Product has (2) images.")
        response.should render_template('index')
    end

    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) images."
        before_product_image_create(@product,@image,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Images deleted (1) from product."
            when false : "Deleting image from product failed due to errors."
          end
         before_product_image_destroy(@product,@image,value,notice)
         response.should redirect_to(product_images_path(@product))
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
          before_product_image_remove(@product,ids,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(product_images_path(@product))
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
          before_product_image_reorder(@product,[@image,@image],value,notice)
          response.should redirect_to(product_images_path(@product))
        end
      end
    end
end

