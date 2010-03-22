class CategoryImagesController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_images, :only => [:create]
  layout "images"

  # GET /categories/1/images
  # GET /categories/1/images.xml
  def index
    # show images for a category
    flash[:notice] =  "Category has (#{@images.size}) images."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @images }
    end
 end

  # POST /categories/1/images
  # POST /categories/1/images.xml
  def create
    @skipped   = CategoryImage.assign_images(@image_ids,@category)
    flash[:notice] =  "Assigned (#{@image_ids.size - @skipped.size}) images."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /categories/1/images/1
  # DELETE /categories/1/images/1.xml
   def destroy
    @category  = Category.find(params[:category_id])
    @reorder_url= reorder_category_images_url(@category)
    @image     = @category.images.find(params[:id])
    respond_to do |format|
      if(@image.destroy)
        flash[:notice] = "Images deleted (1) from category."
        format.html { redirect_to category_images_url(@category) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting image from category failed due to errors."
        format.html { redirect_to category_images_url(@category) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1/images/remove
  # DELETE /categories/1/images/remove.xml
  def remove
    @category  = Category.find(params[:category_id])
    @image_ids = selected_ids(:image_ids)
    respond_to do |format|
      if CategoryImage.remove_images(@image_ids,@category)
        self.load_view_vars
        flash[:notice] =  "Images removed (#{@image_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url= reorder_category_images_url(@category)
        flash[:notice] =  "Removing images failed due to errors."
        format.html { redirect_to category_images_url(@category) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /categories/1/images/reorder
  # POST /categories/1/images/reorder.xml
  def reorder
    @category  = Category.find(params[:category_id])
    @image_ids = selected_ids(:all_images)
    respond_to do |format|
      if CategoryImage.reorder_images(@image_ids,@category)
        self.load_view_vars
        flash[:notice] =  "Images reordered (#{@image_ids.uniq.size})." 
        format.html { redirect_to category_images_url(@category) }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url= reorder_category_images_url(@category)
        flash[:notice] =  "Reordering images failed due to errors."
        format.html { redirect_to category_images_url(@category) }
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
    @category = Category.find(  params[:category_id], :include => [:products, :images] ) 
    @categories  = @category.categories.paginate(:page => params[:page]) || []
    @products  = @category.products.paginate(:page => params[:page]) || []
    @images  = @category.images.paginate(:page => params[:page]) || []
    @reorder_url = reorder_category_images_url(@category)
  end
end
