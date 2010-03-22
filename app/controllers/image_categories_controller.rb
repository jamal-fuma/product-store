class ImageCategoriesController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_categories, :only => [:create]
  layout "categories"

  # GET /images/1/categories
  # GET /images/1/categories.xml
  def index
    # show the categories for a image
    flash[:notice] =  "Image has (#{@categories.size}) categories."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @categories }
    end
 end

  # POST /images/1/categories
  # POST /images/1/categories.xml
  def create
    @skipped   = ImageCategory.assign_categories(@category_ids,@image)
    flash[:notice] =  "Assigned (#{@category_ids.size - @skipped.size}) categories."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /images/1/categories/1
  # DELETE /images/1/categories/1.xml
   def destroy
    @image  = Image.find(params[:image_id])
    @reorder_url = reorder_image_categories_url(@image)
    @category     = @image.categories.find(params[:id])
    respond_to do |format|
      if(@category.destroy)
        flash[:notice] = "Categories deleted (1) from image."
        format.html { redirect_to image_categories_url(@image) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting category from image failed due to errors."
        format.html { redirect_to image_categories_url(@image) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1/categories/remove
  # DELETE /images/1/categories/remove.xml
  def remove
    @image  = Image.find(params[:image_id])
    @category_ids = selected_ids(:category_ids)
    respond_to do |format|
      if ImageCategory.remove_categories(@category_ids,@image)
        self.load_view_vars
        flash[:notice] =  "Categories removed (#{@category_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_image_categories_url(@image)
        flash[:notice] =  "Removing categories failed due to errors."
        format.html { redirect_to image_categories_url(@image) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /images/1/categories/reorder
  # POST /images/1/categories/reorder.xml
  def reorder
    @image  = Image.find(params[:image_id])
    @category_ids = selected_ids(:all_categories)
    respond_to do |format|
      if ImageCategory.reorder_categories(@category_ids,@image)
        self.load_view_vars
        flash[:notice] =  "Categories reordered (#{@category_ids.uniq.size})." 
        format.html { redirect_to image_categories_url(@image) }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_image_categories_url(@image)
        flash[:notice] =  "Reordering categories failed due to errors."
        format.html { redirect_to image_categories_url(@image) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
  end

  def selected_categories
      self.load_view_vars 
      @category_ids = [params[:category][:id]]
  end

  def load_view_vars
    @image = Image.find(params[:image_id], :include => [:products, :categories] ) 
    @categories  = @image.categories.paginate(:page => params[:page]) || []
    @products  = @image.products.paginate(:page => params[:page]) || []
    @reorder_url = reorder_image_categories_url(@image)
  end
end
