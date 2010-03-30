class PageImagesController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_images, :only => [:create]
  layout "images"

  # GET /pages/1/images
  # GET /pages/1/images.xml
  def index
    # show images for a page
    flash[:notice] =  "Page has (#{@images.size}) images."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @images }
    end
 end

  # POST /pages/1/images
  # POST /pages/1/images.xml
  def create
    @skipped   = PageImage.assign_images(@image_ids,@page)
    flash[:notice] =  "Assigned (#{@image_ids.size - @skipped.size}) images."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /pages/1/images/1
  # DELETE /pages/1/images/1.xml
   def destroy
    @page  = Page.find(params[:page_id])
    @reorder_url= reorder_page_images_url(@page)
    @image     = @page.images.find(params[:id])
    respond_to do |format|
      if(@image.destroy)
        flash[:notice] = "Images deleted (1) from page."
        format.html { redirect_to page_images_url(@page) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting image from page failed due to errors."
        format.html { redirect_to page_images_url(@page) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1/images/remove
  # DELETE /pages/1/images/remove.xml
  def remove
    @page  = Page.find(params[:page_id])
    @image_ids = selected_ids(:image_ids)
    respond_to do |format|
      if PageImage.remove_images(@image_ids,@page)
        self.load_view_vars
        flash[:notice] =  "Images removed (#{@image_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url= reorder_page_images_url(@page)
        flash[:notice] =  "Removing images failed due to errors."
        format.html { redirect_to page_images_url(@page) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /pages/1/images/reorder
  # POST /pages/1/images/reorder.xml
  def reorder
    @page  = Page.find(params[:page_id])
    @image_ids = selected_ids(:all_images)
    respond_to do |format|
      if PageImage.reorder_images(@image_ids,@page)
        self.load_view_vars
        flash[:notice] =  "Images reordered (#{@image_ids.uniq.size})." 
        format.html { redirect_to page_images_url(@page) }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url= reorder_page_images_url(@page)
        flash[:notice] =  "Reordering images failed due to errors."
        format.html { redirect_to page_images_url(@page) }
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
    @page = Page.find(  params[:page_id], :include => [:products, :images] ) 
    @pages  = @page.pages.paginate(:page => params[:page]) || []
    @products  = @page.products.paginate(:page => params[:page]) || []
    @images  = @page.images.paginate(:page => params[:page]) || []
    @reorder_url = reorder_page_images_url(@page)
  end
end
