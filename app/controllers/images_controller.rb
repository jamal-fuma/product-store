class ImagesController < ApplicationController
  layout "images"
  before_filter :check_for_cancel, :only => [:create,:update]

  # GET /images
  # GET /images
  def index
    @images = Image.parents.paginate(:page => params[:page])
    @reorder_url = reorder_images_url
    flash[:notice] = "Images found (#{@images.size})."
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  # GET /images/1
  # GET /images/1.xml
 def show
    @image = Image.find(params[:id])
    @categories = @image.categories.paginate(:page => params[:page])
    @products = @image.products.paginate(:page => params[:page])
    @reorder_url = reorder_images_url
    flash[:notice] = 
      "Image has (#{@products.size}) products and (#{@categories.size}) categories."
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/new
  # GET /images/new.xml
  def new
    flash[:notice] = nil
    @image = Image.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @image }
      format.js  { render :partial => 'image', 
                          :locals => {:image => @image},
                          :layout => false 
      }
    end
  end

  # GET /images/1/edit
  def edit
    flash[:notice] = nil
    @image = Image.find(params[:id])
    respond_to do |format|
        format.html
        format.xml { render :xml => @product }
    end
end
  # POST /images
  # POST /images.xml
  def create
    @image = Image.new(params[:image])
    @reorder_url = reorder_images_url
    respond_to do |format|
      if @image.save
        flash[:notice] = 'Image was successfully created.'
        format.html { 
          redirect_to images_url 
        }
        format.xml  { 
          render :xml => @image, :status => :created, :location => @image 
        }
      else
        flash[:notice] = "Creating image failed due to errors."
        format.html { render :action => "new" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.xml
  def update
    @image = Image.find(params[:id])
    @reorder_url = reorder_images_url
    respond_to do |format|
      if @image.update_attributes(params[:image])
        flash[:notice] = 'Image was successfully updated.'
        format.html { redirect_to images_url }
        format.xml  { head :ok }
        format.js { @image.reload}
      else
        flash[:notice] = "Updating image failed due to errors."
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.xml
  def destroy
    @image = Image.find(params[:id])
    @reorder_url = reorder_images_url
    respond_to do |format|
      if(@image.destroy)
        flash[:notice] = "Images deleted (1)."
        format.html { redirect_to images_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Deleting image failed due to errors."
        format.html { redirect_to images_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /images/remove
  # DELETE /images/remove.xml
 def remove
    @reorder_url = reorder_images_url
    respond_to do |format|
      if(Image.remove(selected_ids(:all_images)))
        flash[:notice] = "Images removed (#{@selected_ids.size})."
        format.html { redirect_to images_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Removing images failed due to errors."
        format.html { redirect_to images_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end
 
  # POST /images/remove
  # POST /images/remove.xml
 def reorder
    @reorder_url = reorder_images_url
    respond_to do |format|
      @ids = selected_ids(:all_images)
      if(Image.reorder(@ids))
        flash[:notice] = "Images reordered (#{@ids.size})."
        format.html { redirect_to images_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Reordering images failed due to errors."
        format.html { redirect_to images_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def check_for_cancel
      if params[:commit] == 'Cancel'
        redirect_to images_path
      end
  end
end
