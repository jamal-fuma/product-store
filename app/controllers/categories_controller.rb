class CategoriesController < ApplicationController
  before_filter :check_for_cancel, :only => [:create,:update]

  # GET /categories
  # GET /categories.xml
  def index
    @reorder_url = reorder_categories_url
    @categories = Category.parents.paginate(:page => params[:page])
    flash[:notice] = "Categories found (#{@categories.size})."
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category   = Category.find(params[:id])
    @categories = @category.children.paginate(:page => params[:page])
    @images     = @category.images.paginate(:page => params[:page])
    @products   = @category.products.paginate(:page => params[:page])

    @reorder_url = reorder_categories_url
    flash[:notice] = "Category has (#{@images.size}) images and (#{@products.size}) products and (#{@categories.size}) categories."
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    flash[:notice] = nil
    @category = Category.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @category }
      format.js  { render :partial => 'category', 
                          :locals => {:category => @category},
                          :layout => false 
      }
    end
  end

  # GET /categories/1/edit
  def edit
    flash[:notice] = nil
    @category = Category.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @category }
      format.js  { render :partial => 'category', 
                          :locals => {:category => @category},
                          :layout => false 
      }
    end
  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])
    @reorder_url = reorder_categories_url
    respond_to do |format|
      if @category.save
        flash[:notice] = 'Category was successfully created.'
        format.html { 
          redirect_to categories_url 
        }
        format.xml  { 
          render :xml => @category, :status => :created, :location => @category
        }
        format.js { 
            @categories = Category.parents.paginate(:page => params[:page])
        }
       else
        flash[:notice] = "Saving category failed due to errors."
        format.html { render :action => "new" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'new', :layout => false }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])
    @reorder_url = reorder_categories_url
    respond_to do |format|
      if @category.update_attributes(params[:category])
        flash[:notice] = 'Category was successfully updated.'
        format.html { redirect_to categories_url }
        format.xml  { head :ok }
        format.js { render :text => @category.reload.attributes[params[:category].keys.first] }
      else
        flash[:notice] = "Updating category failed due to errors."
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'edit', :layout => false }
      end
    end
  end

 # DELETE /categories/1
 # DELETE /categories/1.xml
 def destroy
    @category = Category.find(params[:id])
    @reorder_url = reorder_categories_url
    respond_to do |format|
      if(@category.destroy)
        flash[:notice] = "Categories deleted (1)."
        format.html { redirect_to categories_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Deleting category failed due to errors."
        format.html { redirect_to categories_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

 # DELETE /categories/remove
 # DELETE /categories/remove.xml
 def remove
    @reorder_url = reorder_categories_url
    respond_to do |format|
      @ids = selected_ids(:category_ids)
      if(Category.remove(@ids))
        flash[:notice] = "Categories removed (#{@ids.size})."
        format.html { redirect_to categories_url }
        format.xml  { head :ok }
        format.js { 
            @categories = Category.parents.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Removing categories failed due to errors."
        format.html { redirect_to categories_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end
 
 # POST /categories/reorder
 # POST /categories/reorder.xml
 def reorder
    @reorder_url = reorder_categories_url
    respond_to do |format|
      @ids = selected_ids(:all_categories)
      if(Category.reorder(@ids))
        flash[:notice] = "Categories reordered (#{@ids.size})."
        format.html { redirect_to categories_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Reordering categories failed due to errors."
        format.html { redirect_to categories_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def check_for_cancel
      if params[:commit] == 'Cancel'
        respond_to do |format|
          format.js
          format.html { redirect_to categories_url }
          format.xml  { head :ok }
        end
        return
      end
  end
end
