class ProductsController < ApplicationController
  before_filter :check_for_cancel, :only => [:create,:update]
  layout "products"

  # GET /products
  # GET /products
  def index
    respond_to do |format|
      format.html {
        @reorder_url = reorder_products_url
        @products = Product.paginate(:page => params[:page])
        flash[:notice] = "Products found (#{@products.size})."
      }
      format.xml  { render :xml => Product.all }
    end
  end

  # GET /products/1
  # GET /products/1.xml
 def show
    @product = Product.find(params[:id])
    @reorder_url = reorder_products_url
    @categories = @product.categories.paginate(:page => params[:page])
    @images = @product.images.paginate(:page => params[:page])
    @suppliers = @product.suppliers.paginate(:page => params[:page])
    flash[:notice] = "Product has (#{@images.size}) images "
    flash[:notice] << "and (#{@suppliers.size}) suppliers and (#{@categories.size}) categories."
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    flash[:notice] = nil
    @product = Product.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @product }
      format.js  { render :partial => 'product', 
                          :locals => {:product => @product},
                          :layout => false 
      }
    end
  end

  # GET /products/1/edit
  def edit
    flash[:notice] = nil
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @product }
      format.js  { render :partial => 'product', 
                          :locals => {:product => @product},
                          :layout => false 
      }
    end
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])
    @reorder_url = reorder_products_url
    respond_to do |format|
      if @product.save
        flash[:notice] = 'Product was successfully created.'
        format.html { 
          redirect_to products_url 
        }
        format.xml  { 
          render :xml => @product, :status => :created, :location => @product 
        }
        format.js { 
            @products = Product.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Creating product failed due to errors."
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'new', :layout => false }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])
    @reorder_url = reorder_products_url
    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Product was successfully updated.'
        format.html { redirect_to products_url }
        format.xml  { head :ok }
        format.js { @product.reload}
      else
        flash[:notice] = "Updating product failed due to errors."
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'edit', :layout => false }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @reorder_url = reorder_products_url
    respond_to do |format|
      if(@product.destroy)
        flash[:notice] = "Products deleted (1)."
        format.html { redirect_to products_url }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting product failed due to errors."
        format.html { redirect_to products_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /products/remove
  # DELETE /products/remove.xml
 def remove
    @reorder_url = reorder_products_url
    @ids = selected_ids(:product_ids)
    respond_to do |format|
      if(Product.remove(@ids))
        flash[:notice] = "Products removed (#{@ids.size})."
        format.html { redirect_to products_url }
        format.xml  { head :ok }
        format.js {
            @products = Product.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Removing products failed due to errors."
        format.html { redirect_to products_url }
        format.xml  { head :unprocessable_entity }
        format.js 
      end
    end
  end

  # POST /products/reorder
  # POST /products/reorder.xml
 def reorder
    @reorder_url = reorder_products_url
    @ids = selected_ids(:all_products)
    respond_to do |format|
      if(Product.reorder(@ids))
        flash[:notice] = "Products reordered (#{@ids.size})."
        format.html { redirect_to products_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Reordering products failed due to errors."
        format.html { redirect_to products_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end
  def check_for_cancel
      if params[:commit] == 'Cancel'
        redirect_to :back and return
      end
  end
end
