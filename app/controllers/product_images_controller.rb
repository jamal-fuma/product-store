class ProductImagesController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_images, :only => [:create]
  layout "images"

  # GET /products/1/images
  # GET /products/1/images.xml
  def index
    # show the images for a product
    flash[:notice] =  "Product has (#{@images.size}) images."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @images }
    end
 end

  # POST /products/1/images
  # POST /products/1/images.xml
  def create
    @skipped   = ProductImage.assign_images(@image_ids,@product)
    flash[:notice] =  "Assigned (#{@image_ids.size - @skipped.size}) images."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /products/1/images/1
  # DELETE /products/1/images/1.xml
   def destroy
    @product  = Product.find(params[:product_id])
    @reorder_url= reorder_product_images_url(@product)
    @image     = @product.images.find(params[:id])
    respond_to do |format|
      if(@image.destroy)
        flash[:notice] = "Images deleted (1) from product."
        format.html { redirect_to product_images_url(@product) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting image from product failed due to errors."
        format.html { redirect_to product_images_url(@product) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1/images/remove
  # DELETE /products/1/images/remove.xml
  def remove
    @product  = Product.find(params[:product_id])
    @image_ids = selected_ids(:image_ids)
    respond_to do |format|
      if ProductImage.remove_images(@image_ids,@product)
        self.load_view_vars
        flash[:notice] =  "Images removed (#{@image_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_product_images_url(@product)
        flash[:notice] =  "Removing images failed due to errors."
        format.html { redirect_to product_images_url(@product) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /products/1/images/reorder
  # POST /products/1/images/reorder.xml
  def reorder
    @product  = Product.find(params[:product_id])
    @image_ids = selected_ids(:all_images)
    respond_to do |format|
      if ProductImage.reorder_images(@image_ids,@product)
        self.load_view_vars
        flash[:notice] =  "Images reordered (#{@image_ids.uniq.size})." 
        format.html { redirect_to product_images_url(@product) }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_product_images_url(@product)
        flash[:notice] =  "Reordering images failed due to errors."
        format.html { redirect_to product_images_url(@product) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
  end

  def selected_images
      self.load_view_vars
      @image_ids = [params[:image][:id]]
  end

  def load_view_vars
    @product = Product.find(  params[:product_id], :include => [:categories, :images,:suppliers] ) 
    @categories  = @product.categories.paginate(:page => params[:page]) || []
    @suppliers   = @product.suppliers.paginate(:page => params[:page]) || []
    @images      = @product.images.paginate(:page => params[:page]) || []
    @reorder_url = reorder_product_images_url(@product)
  end
end
