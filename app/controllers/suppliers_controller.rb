class SuppliersController < ApplicationController
  layout "suppliers"
  before_filter :check_for_cancel, :only => [:create,:update]

  # GET /suppliers
  # GET /suppliers
  def index
    respond_to do |format|
      format.html {
        @reorder_url = reorder_suppliers_url
        @suppliers = Supplier.paginate(:page => params[:page])
        flash[:notice] = "Suppliers found (#{@suppliers.size})."
      }
      format.xml  { render :xml => Supplier.all }
    end
  end

  # GET /suppliers/1
  # GET /suppliers/1.xml
 def show
    @supplier = Supplier.find(params[:id])
    @products = @supplier.products.paginate(:page => params[:page])
    
  

    @reorder_url = reorder_suppliers_url
    flash[:notice] = "Supplier has (#{@products.size}) products."
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @supplier }
    end
  end

  # GET /suppliers/new
  # GET /suppliers/new.xml
  def new
    flash[:notice] = nil
    @supplier = Supplier.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @supplier }
      format.js  { render :partial => 'supplier', 
                          :locals => {:supplier => @supplier},
                          :layout => false 
      }
    end
  end

  # GET /suppliers/1/edit
  def edit
    flash[:notice] = nil
    @supplier = Supplier.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @supplier }
      format.js  { render :partial => 'supplier', 
                          :locals => {:supplier => @supplier},
                          :layout => false 
      }
    end
  end

  # POST /suppliers
  # POST /suppliers.xml
  def create
    @supplier = Supplier.new(params[:supplier])
    @reorder_url = reorder_suppliers_url
    respond_to do |format|
      if @supplier.save
        flash[:notice] = 'Supplier was successfully created.'
        format.html { 
          redirect_to suppliers_url
        }
        format.xml  { 
          render :xml => @supplier, :status => :created, :location => @supplier
        }
        format.js {
            @suppliers = Supplier.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Creating supplier failed due to errors."
        format.html { render :action => "new" }
        format.xml  { render :xml => @supplier.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'new', :layout => false }
      end
    end
  end

  # PUT /suppliers/1
  # PUT /suppliers/1.xml
  def update
    @supplier = Supplier.find(params[:id])
    @reorder_url = reorder_suppliers_url
    respond_to do |format|
      if @supplier.update_attributes(params[:supplier])
        flash[:notice] = 'Supplier was successfully updated.'
        format.html { redirect_to suppliers_url }
        format.xml  { head :ok }
        format.js { render :text => @supplier.reload.send(params[:supplier].keys.first) }
      else
        flash[:notice] = "Updating supplier failed due to errors."
        format.html { render :action => "edit" }
        format.xml  { render :xml => @supplier.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'edit', :layout => false }
      end
    end
  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.xml
  def destroy
    @supplier = Supplier.find(params[:id])
    @reorder_url = reorder_suppliers_url
    respond_to do |format|
      if(@supplier.destroy)
        flash[:notice] = "Suppliers deleted (1)."
        format.html { redirect_to suppliers_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Deleting supplier failed due to errors."
        format.html { redirect_to suppliers_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliers/remove
  # DELETE /suppliers/remove.xml
 def remove
    @reorder_url = reorder_suppliers_url
    @ids = selected_ids(:supplier_ids)
    respond_to do |format|
      if(Supplier.remove(@ids))
        flash[:notice] = "Suppliers removed (#{@ids.size})."
        format.html { redirect_to suppliers_url }
        format.xml  { head :ok }
        format.js {
            @suppliers = Supplier.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Removing suppliers failed due to errors."
        format.html { redirect_to suppliers_url }
        format.xml  { head :unprocessable_entity }
        format.js 
      end
    end
  end
 
  # POST /suppliers/remove
  # POST /suppliers/remove.xml
 def reorder
    @reorder_url = reorder_suppliers_url
    @ids = selected_ids(:all_suppliers)
    respond_to do |format|
      if(Supplier.reorder(@ids))
        flash[:notice] = "Suppliers reordered (#{@ids.size})."
        format.html { redirect_to suppliers_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Reordering suppliers failed due to errors."
        format.html { redirect_to suppliers_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def check_for_cancel
      if params[:commit] == 'Cancel'
        redirect_to suppliers_path unless request.xhr?
      end
  end
end
