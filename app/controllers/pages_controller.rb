class PagesController < ApplicationController
  before_filter :check_for_cancel, :only => [:create,:update]
  # GET /pages
  # GET /pages.xml
  def index
    @reorder_url = reorder_pages_url
    @pages = Page.parents.paginate(:page => params[:page])
    flash[:notice] = "Pages found (#{@pages.size})."
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.xml
  def show
    @page   = Page.find(params[:id])
    @pages = @page.children.paginate(:page => params[:page])
    @images     = @page.images.paginate(:page => params[:page])
    @products   = @page.products.paginate(:page => params[:page])

    @reorder_url = reorder_pages_url
    flash[:notice] = "Page has (#{@images.size}) images and (#{@products.size}) products and (#{@pages.size}) pages."
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /pages/new
  # GET /pages/new.xml
  def new
    flash[:notice] = nil
    @page = Page.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @page }
      format.js  { render :partial => 'page', 
                          :locals => {:page => @page},
                          :layout => false 
      }
    end
  end

  # GET /pages/1/edit
  def edit
    flash[:notice] = nil
    @page = Page.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @page }
      format.js  { render :partial => 'page', 
                          :locals => {:page => @page},
                          :layout => false 
      }
    end
  end

  # POST /pages
  # POST /pages.xml
  def create
    @page = Page.new(params[:page])
    @reorder_url = reorder_pages_url
    respond_to do |format|
      if @page.save
        flash[:notice] = 'Page was successfully created.'
        format.html { 
          redirect_to pages_url 
        }
        format.xml  { 
          render :xml => @page, :status => :created, :location => @page
        }
        format.js { 
            @pages = Page.parents.paginate(:page => params[:page])
        }
       else
        flash[:notice] = "Saving page failed due to errors."
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'new', :layout => false }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.xml
  def update
    @page = Page.find(params[:id])
    @reorder_url = reorder_pages_url
    respond_to do |format|
      if @page.update_attributes(params[:page])
        flash[:notice] = 'Page was successfully updated.'
        format.html { redirect_to pages_url }
        format.xml  { head :ok }
        format.js { render :text => @page.reload.attributes[params[:page].keys.first] }
      else
        flash[:notice] = "Updating page failed due to errors."
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'edit', :layout => false }
      end
    end
  end

 # DELETE /pages/1
 # DELETE /pages/1.xml
 def destroy
    @page = Page.find(params[:id])
    @reorder_url = reorder_pages_url
    respond_to do |format|
      if(@page.destroy)
        flash[:notice] = "Pages deleted (1)."
        format.html { redirect_to pages_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Deleting page failed due to errors."
        format.html { redirect_to pages_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

 # DELETE /pages/remove
 # DELETE /pages/remove.xml
 def remove
    @reorder_url = reorder_pages_url
    respond_to do |format|
      @ids = selected_ids(:page_ids)
      if(Page.remove(@ids))
        flash[:notice] = "Pages removed (#{@ids.size})."
        format.html { redirect_to pages_url }
        format.xml  { head :ok }
        format.js { 
            @pages = Page.parents.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Removing pages failed due to errors."
        format.html { redirect_to pages_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end
 
 # POST /pages/reorder
 # POST /pages/reorder.xml
 def reorder
    @reorder_url = reorder_pages_url
    respond_to do |format|
      @ids = selected_ids(:all_pages)
      if(Page.reorder(@ids))
        flash[:notice] = "Pages reordered (#{@ids.size})."
        format.html { redirect_to pages_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Reordering pages failed due to errors."
        format.html { redirect_to pages_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def check_for_cancel
      if params[:commit] == 'Cancel'
        respond_to do |format|
          format.js
          format.html { redirect_to pages_url }
          format.xml  { head :ok }
        end
        return
      end
  end
end
