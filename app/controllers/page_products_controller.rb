class PageProductsController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_products, :only => [:create]
  layout "products"

  # GET /pages/1/products
  # GET /pages/1/products.xml
  def index
    # show the products for a page
    flash[:notice] =  "Page has (#{@products.size}) products."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @products }
    end
 end

  # POST /pages/1/products
  # POST /pages/1/products.xml
  def create
    @skipped   = PageProduct.assign_products(@product_ids,@page)
    flash[:notice] =  "Assigned (#{@product_ids.size - @skipped.size}) products."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /pages/1/products/1
  # DELETE /pages/1/products/1.xml
   def destroy
    @page  = Page.find(params[:page_id])
    @reorder_url = reorder_page_products_url(@page)
    @product   = @page.products.find(params[:id])
    respond_to do |format|
      if(@product.destroy)
        flash[:notice] = "Products deleted (1) from page."
        format.html { redirect_to page_products_url(@page) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting product from page failed due to errors."
        format.html { redirect_to page_products_url(@page) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1/products/remove
  # DELETE /pages/1/products/remove.xml
  def remove
    @page  = Page.find(params[:page_id])
    @product_ids = selected_ids(:product_ids)
    respond_to do |format|
      if PageProduct.remove_products(@product_ids,@page)
        self.load_view_vars
        flash[:notice] =  "Products removed (#{@product_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_page_products_url(@page)
        flash[:notice] =  "Removing products failed due to errors."
        format.html { redirect_to page_products_url(@page) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /pages/1/products/reorder
  # POST /pages/1/products/reorder.xml
  def reorder
    @page  = Page.find(params[:page_id])
    @product_ids = selected_ids(:all_products)
    respond_to do |format|
      if PageProduct.reorder_products(@product_ids,@page)
        self.load_view_vars
        flash[:notice] =  "Products reordered (#{@product_ids.uniq.size})." 
        format.html { redirect_to page_products_url(@page) }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_page_products_url(@page)
        flash[:notice] =  "Reordering products failed due to errors."
        format.html { redirect_to page_products_url(@page) }
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
    @page = Page.find(  params[:page_id], :include => [:products, :images] ) 
    @pages  = @page.pages.paginate(:page => params[:page]) || []
    @products  = @page.products.paginate(:page => params[:page]) || []
    @images  = @page.images.paginate(:page => params[:page]) || []
    @reorder_url = reorder_page_products_url(@page)
  end
end
