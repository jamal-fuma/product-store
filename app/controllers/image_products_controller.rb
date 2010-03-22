class ImageProductsController < ApplicationController 
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_products, :only => [:create]
  layout "products"

  # GET /images/1/products
  # GET /images/1/products.xml
  def index
    # show the products for a image
    flash[:notice] =  "Image has (#{@products.size}) products."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @products }
    end
 end

  # POST /images/1/products
  # POST /images/1/products.xml
  def create
    @skipped   = ImageProduct.assign_products(@product_ids,@image)
    flash[:notice] =  "Assigned (#{@product_ids.size - @skipped.size}) products."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /images/1/products/1
  # DELETE /images/1/products/1.xml
   def destroy
    @image  = Image.find(params[:image_id])
    @reorder_url = reorder_image_products_url(@image)
    @product     = @image.products.find(params[:id])
    respond_to do |format|
      if(@product.destroy)
        flash[:notice] = "Products deleted (1) from image."
        format.html { redirect_to image_products_url(@image) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting product from image failed due to errors."
        format.html { redirect_to image_products_url(@image) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1/products/remove
  # DELETE /images/1/products/remove.xml
  def remove
    @image  = Image.find(params[:image_id])
    @product_ids = selected_ids(:product_ids)
    respond_to do |format|
      if ImageProduct.remove_products(@product_ids,@image)
        self.load_view_vars
        flash[:notice] =  "Products removed (#{@product_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_image_products_url(@image)
        flash[:notice] =  "Removing products failed due to errors."
        format.html { redirect_to image_products_url(@image) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /images/1/products/reorder
  # POST /images/1/products/reorder.xml
  def reorder
    @image  = Image.find(params[:image_id])
    @product_ids = selected_ids(:all_products)
    respond_to do |format|
      if ImageProduct.reorder_products(@product_ids,@image)
        self.load_view_vars
        flash[:notice] =  "Products reordered (#{@product_ids.uniq.size})." 
        format.html { redirect_to image_products_url(@image) }
        format.xml  { head :ok }
        format.js
      else
        flash[:notice] =  "Reordering products failed due to errors."
        format.html { redirect_to image_products_url(@image) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
  end

  def selected_products
      self.load_view_vars
      @product_ids = [params[:product][:id]]
  end

  def load_view_vars
    @image = Image.find(  params[:image_id], :include => [:products, :categories] ) 
    @categories  = @image.categories.paginate(:page => params[:page]) || []
    @products  = @image.products.paginate(:page => params[:page]) || []
    @reorder_url = reorder_image_products_url(@image)
  end
end
