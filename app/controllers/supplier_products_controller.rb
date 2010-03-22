class SupplierProductsController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_products, :only => [:create]
  layout "products"

  # GET /suppliers/1/products
  # GET /suppliers/1/products.xml
  def index
    # show the products for a supplier
    flash[:notice] =  "Supplier has (#{@products.size}) products."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @products }
    end
 end

  # POST /suppliers/1/products
  # POST /suppliers/1/products.xml
  def create
    @skipped   = SupplierProduct.assign_products(@product_ids,@supplier)
    flash[:notice] =  "Assigned (#{@product_ids.size - @skipped.size}) products."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /suppliers/1/products/1
  # DELETE /suppliers/1/products/1.xml
   def destroy
    @supplier  = Supplier.find(params[:supplier_id])
    @product     = @supplier.products.find(params[:id])
    @reorder_url = reorder_supplier_products_url(@supplier)
    respond_to do |format|
      if(@product.destroy)
        flash[:notice] = "Products deleted (1) from supplier."
        format.html { redirect_to supplier_products_url(@supplier) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting product from supplier failed due to errors."
        format.html { redirect_to supplier_products_url(@supplier) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliers/1/products/remove
  # DELETE /suppliers/1/products/remove.xml
  def remove
    @supplier  = Supplier.find(params[:supplier_id])
    @product_ids = selected_ids(:product_ids)
    respond_to do |format|
      if SupplierProduct.remove_products(@product_ids,@supplier)
        self.load_view_vars
        flash[:notice] =  "Products removed (#{@product_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_supplier_products_url(@supplier)
        flash[:notice] =  "Removing products failed due to errors."
        format.html { redirect_to supplier_products_url(@supplier) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /suppliers/1/products/reorder
  # POST /suppliers/1/products/reorder.xml
  def reorder
    @supplier  = Supplier.find(params[:supplier_id])
    @product_ids = selected_ids(:all_products)
    respond_to do |format|
      if SupplierProduct.reorder_products(@product_ids,@supplier)
        self.load_view_vars
        flash[:notice] =  "Products reordered (#{@product_ids.uniq.size})." 
        format.html { redirect_to supplier_products_url(@supplier) }
        format.xml  { head :ok }
        format.js
      else
        flash[:notice] =  "Reordering products failed due to errors."
        format.html { redirect_to supplier_products_url(@supplier) }
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
    @supplier = Supplier.find(params[:supplier_id], :include => [:products] )
    @products  = @supplier.products.paginate(:page => params[:page])
    @reorder_url = reorder_supplier_products_url(@supplier)
  end
end
