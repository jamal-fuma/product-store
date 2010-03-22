class CategoryProductsController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_products, :only => [:create]
  layout "products"

  # GET /categories/1/products
  # GET /categories/1/products.xml
  def index
    # show the products for a category
    flash[:notice] =  "Category has (#{@products.size}) products."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @products }
    end
 end

  # POST /categories/1/products
  # POST /categories/1/products.xml
  def create
    @skipped   = CategoryProduct.assign_products(@product_ids,@category)
    flash[:notice] =  "Assigned (#{@product_ids.size - @skipped.size}) products."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /categories/1/products/1
  # DELETE /categories/1/products/1.xml
   def destroy
    @category  = Category.find(params[:category_id])
    @reorder_url = reorder_category_products_url(@category)
    @product   = @category.products.find(params[:id])
    respond_to do |format|
      if(@product.destroy)
        flash[:notice] = "Products deleted (1) from category."
        format.html { redirect_to category_products_url(@category) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting product from category failed due to errors."
        format.html { redirect_to category_products_url(@category) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1/products/remove
  # DELETE /categories/1/products/remove.xml
  def remove
    @category  = Category.find(params[:category_id])
    @product_ids = selected_ids(:product_ids)
    respond_to do |format|
      if CategoryProduct.remove_products(@product_ids,@category)
        self.load_view_vars
        flash[:notice] =  "Products removed (#{@product_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_category_products_url(@category)
        flash[:notice] =  "Removing products failed due to errors."
        format.html { redirect_to category_products_url(@category) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /categories/1/products/reorder
  # POST /categories/1/products/reorder.xml
  def reorder
    @category  = Category.find(params[:category_id])
    @product_ids = selected_ids(:all_products)
    respond_to do |format|
      if CategoryProduct.reorder_products(@product_ids,@category)
        self.load_view_vars
        flash[:notice] =  "Products reordered (#{@product_ids.uniq.size})." 
        format.html { redirect_to category_products_url(@category) }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_category_products_url(@category)
        flash[:notice] =  "Reordering products failed due to errors."
        format.html { redirect_to category_products_url(@category) }
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
    @category = Category.find(  params[:category_id], :include => [:products, :images] ) 
    @categories  = @category.categories.paginate(:page => params[:page]) || []
    @products  = @category.products.paginate(:page => params[:page]) || []
    @images  = @category.images.paginate(:page => params[:page]) || []
    @reorder_url = reorder_category_products_url(@category)
  end
end
