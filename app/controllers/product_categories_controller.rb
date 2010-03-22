class ProductCategoriesController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_categories, :only => [:create]
  layout "categories"

  # GET /products/1/categories
  # GET /products/1/categories.xml
  def index
    # show the categories for a product
    flash[:notice] =  "Product has (#{@categories.size}) categories."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @categories }
    end
 end

  # POST /products/1/categories
  # POST /products/1/categories.xml
  def create
    @skipped = ProductCategory.assign_categories(@category_ids,@product)
    flash[:notice] =  "Assigned (#{@category_ids.size - @skipped.size}) categories."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /products/1/categories/1
  # DELETE /products/1/categories/1.xml
   def destroy
    @product  = Product.find(params[:product_id])
    @reorder_url= reorder_product_categories_url(@product)
    @category     = @product.categories.find(params[:id])
    respond_to do |format|
      if(@category.destroy)
        flash[:notice] = "Categories deleted (1) from product."
        format.html { redirect_to product_categories_url(@product) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting category from product failed due to errors."
        format.html { redirect_to product_categories_url(@product) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1/categories/remove
  # DELETE /products/1/categories/remove.xml
  def remove
    @product  = Product.find(params[:product_id])
    @category_ids = selected_ids(:category_ids)
    respond_to do |format|
      if ProductCategory.remove_categories(@category_ids,@product)
        self.load_view_vars
        flash[:notice] =  "Categories removed (#{@category_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url= reorder_product_categories_url(@product)
        flash[:notice] =  "Removing categories failed due to errors."
        format.html { redirect_to product_categories_url(@product) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /products/1/categories/reorder
  # POST /products/1/categories/reorder.xml
  def reorder
    @product  = Product.find(params[:product_id])
    @category_ids = selected_ids(:all_categories)
    respond_to do |format|
      if ProductCategory.reorder_categories(@category_ids,@product)
        self.load_view_vars
        flash[:notice] =  "Categories reordered (#{@category_ids.uniq.size})." 
        format.html { redirect_to product_categories_url(@product) }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url= reorder_product_categories_url(@product)
        flash[:notice] =  "Reordering categories failed due to errors."
        format.html { redirect_to product_categories_url(@product) }
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
    @product = Product.find(  params[:product_id], :include => [:categories, :images,:suppliers] ) 
    @categories  = @product.categories.paginate(:page => params[:page]) || []
    @suppliers   = @product.suppliers.paginate(:page => params[:page]) || []
    @images      = @product.images.paginate(:page => params[:page]) || []
    @reorder_url = reorder_product_categories_url(@product)
  end
end
