class ProductSuppliersController < ApplicationController
  include ParameterScanning
  before_filter :load_view_vars, :only => [:index]
  before_filter :selected_suppliers, :only => [:create]
  layout "suppliers"

  # GET /products/1/suppliers
  # GET /products/1/suppliers.xml
  def index
    # show the suppliers for a product
    flash[:notice] =  "Product has (#{@suppliers.size}) suppliers."
    respond_to do |format|
      format.html # index.html
      format.xml  { render :xml => @suppliers }
    end
 end

  # POST /products/1/suppliers
  # POST /products/1/suppliers.xml
  def create
    @skipped = ProductSupplier.assign_suppliers(@supplier_ids,@product)
    flash[:notice] =  "Assigned (#{@supplier_ids.size - @skipped.size}) suppliers."
    self.load_view_vars
    respond_to do |format|
      format.html { render :index }
      format.xml  { render :xml => @skipped }
      format.js
    end
 end

  # DELETE /products/1/suppliers/1
  # DELETE /products/1/suppliers/1.xml
   def destroy
    @product  = Product.find(params[:product_id])
    @reorder_url= reorder_product_suppliers_url(@product)
    @supplier     = @product.suppliers.find(params[:id])
    respond_to do |format|
      if(@supplier.destroy)
        flash[:notice] = "Suppliers deleted (1) from product."
        format.html { redirect_to product_suppliers_url(@product) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting supplier from product failed due to errors."
        format.html { redirect_to product_suppliers_url(@product) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1/suppliers/remove
  # DELETE /products/1/suppliers/remove.xml
  def remove
    @product  = Product.find(params[:product_id])
    @supplier_ids = selected_ids(:supplier_ids)
    respond_to do |format|
      if ProductSupplier.remove_suppliers(@supplier_ids,@product)
        self.load_view_vars
        flash[:notice] =  "Suppliers removed (#{@supplier_ids.uniq.size})." 
        format.html { render :index }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_product_suppliers_url(@product)
        flash[:notice] =  "Removing suppliers failed due to errors."
        format.html { redirect_to product_suppliers_url(@product) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
 end
  
  # POST /products/1/suppliers/reorder
  # POST /products/1/suppliers/reorder.xml
  def reorder
    @product  = Product.find(params[:product_id])
    @supplier_ids = selected_ids(:all_suppliers)
    respond_to do |format|
      if ProductSupplier.reorder_suppliers(@supplier_ids,@product)
        self.load_view_vars
        flash[:notice] =  "Suppliers reordered (#{@supplier_ids.uniq.size})." 
        format.html { redirect_to product_suppliers_url(@product) }
        format.xml  { head :ok }
        format.js
      else
        @reorder_url = reorder_product_suppliers_url(@product)
        flash[:notice] =  "Reordering suppliers failed due to errors."
        format.html { redirect_to product_suppliers_url(@product) }
        format.xml  { head :unprocessable_entity }
        format.js
      end
    end
  end

  def selected_suppliers
      self.load_view_vars 
      @supplier_ids = [params[:supplier][:id]]
  end

  def load_view_vars
    @product = Product.find(  params[:product_id], :include => [:categories, :images,:suppliers] ) 
    @categories  = @product.categories.paginate(:page => params[:page]) || []
    @suppliers   = @product.suppliers.paginate(:page => params[:page]) || []
    @images      = @product.images.paginate(:page => params[:page]) || []
    @reorder_url = reorder_product_suppliers_url(@product)
  end
end
