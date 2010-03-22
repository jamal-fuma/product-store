require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_image_product_selected_products(image,categories,products)
  before_image_view_helper(image,categories,products,:twice)
  ids = [image.id,products.first.id]
end

 # GET /images/1/products
 # GET /images/1/products.xml
 def before_image_product_index(image,categories,products,notice)
  before_image_view_helper(image,categories,products)
  get 'index', :image_id => image.id
  assigns[:reorder_url].should == reorder_image_products_url(image)
  assert_list_present(products,:products,notice)
  assert_flash(notice)
end 

 # POST /images/1/products
 # POST /images/1/products.xml
 def before_image_product_create(image,product,notice)
      before_image_product_selected_products(
            image, [@category,@category], [product,product])
  has_accessor(ImageProduct,:assign_products,[]) 

  post 'create', :image_id => image.id, :product =>{:id => product.id}
  assert_flash(notice)
end

 # DELETE /images/1/products/1
 # DELETE /images/1/products/1.xml
 def before_image_product_destroy(image,product,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Image,:find,image)
  has_accessor(product,:destroy,value)
  has_many_association_find(image,:products,[product,product],product)
  delete 'destroy', :image_id => image.id, :id => product.id
  assert_flash(notice)
  image
end

 # DELETE /images/1/products/remove
 # DELETE /images/1/products/remove.xml
 def before_image_product_remove(image,ids,value,notice)
  if(value)
    before_image_view_helper(image,
      [@category,@category], [@product,@product])
  else
    has_accessor(Image,:find,image,:twice)
  end
  has_accessor(ImageProduct,:remove_products,value)
  delete 'remove', :image_id => image.id, :selected_ids => ids
  assigns[:reorder_url].should == reorder_image_products_url(image)
  assert_flash(notice)
  image
end

 # POST /images/1/products/reorder
 # POST /images/1/products/reorder.xml
 def before_image_product_reorder(image,ids,value,notice)
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
  has_accessor(ImageProduct,:reorder_products,value)
  post 'reorder', :image_id => image.id, :all_products => ids
  assert_flash(notice)
  image
end

describe ImageProductsController do
  before do 
    @current_user = stub_login(controller)
    @product    = mock_model(Product)
    @category = mock_model(Category)
    @image_product = mock_model(ImageProduct)
    @image    = mock_model(Image)

    @attributes = {
      "image_id" => @image.id,
      "product_id" => @product.id      
    }

    @updated_attributes = {
      "id"  => @image_product.id,
      "image_id" => @image.id,
      "product_id" => @product.id      
    }
  end

   # test index, no branching
    it "should render the index page" do
    before_image_product_index(
        @image,
        [@category,@category],
        [@product,@product],
        "Image has (2) products.")
        response.should render_template('index')
    end

    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
        notice = "Assigned (1) products."
        before_image_product_create(@image,@product,notice)
        response.should render_template('index')
    end
    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
          notice = case value
            when true  : "Products deleted (1) from image."
            when false : "Deleting product from image failed due to errors."
          end
         before_image_product_destroy(@image,@product,value,notice)
         response.should redirect_to(image_products_path(@image))
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
          before_image_product_remove(@image,ids,value,notice)
          case value
            when true  : response.should render_template('index')
            when false : response.should redirect_to(image_products_path(@image))
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
          before_image_product_reorder(@image,[@product,@product],value,notice)
          response.should redirect_to(image_products_path(@image))
        end
      end
    end
end

