module Boiler
module Plate
  # "role" => "Role"
  def model_name_str
    controller_name().capitalize
  end

 # "Role" => "Roles"
  def resource_name_str
     model_name_str.pluralize
  end

  def succeeded_flash(message)
    resource_name_str + " " + message
  end
  

  def failed_flash(action)
    "#{action} #{resource_name_str.downcase} failed due to errors"
  end

  # Item
  def model_class_ref
    model_name_str.classify.constantize
  end
  
 # all_items
  def collection_name_sym
    "all_#{resource_name_str.downcase}".to_sym
  end
  
  # items_url
  def collection_url
    url_for(:controller => controller_name().pluralize, :action => 'index')
  end

   # @item
  def collection_model_name
    "@#{controller_name.singularize}"
  end

  def collection_model_ref=(value)
    self.instance_variable_set self.collection_model_name, value
  end

  def collection_model_ref
    self.instance_variable_get self.collection_model_name
  end

  def model_name_sym
   "#{controller_name.singularize.downcase}".to_sym
  end

  def reorder
    respond_to do |format|
    if(model_class_ref.reorder(self.selected_ids))
        flash[:notice] = succeeded_flash("reordered (#{@selected_ids.size}).")
        format.html { redirect_to collection_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = failed_flash("Reordering")
        format.html { redirect_to collection_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def remove
    respond_to do |format|
      if(model_class_ref.remove(self.selected_ids))
        flash[:notice] = succeeded_flash("removed (#{@selected_ids.size}).")
        format.xml  { head :ok }
        format.html { redirect_to collection_url }
        format.js 
      else
        flash[:notice] = failed_flash("Removing")
        format.html { redirect_to collection_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end
  
  def edit
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    collection_model_ref = model_class_ref.new
    flash[:notice] = nil
    @item =  collection_model_ref
    respond_to do |format|
      format.html # new.html.erb
      format.js { render :partial => controller_name.singularize,
                    :locals => {controller_name.singularize.to_sym => @item},
                    :layout => false 
      }
      format.xml  { render :xml => collection_model_ref }
    end
  end
   
 
  def update
    respond_to do |format|
      if(self.collection_model_ref.update_attributes(params[model_name_sym]))
        flash[:notice] = succeeded_flash("was successfully updated.")
        format.xml  { head :ok }
        format.html { redirect_to collection_url }
        format.js
      else
        flash[:notice] = failed_flash("Updating")
        format.html { render :action => "edit" }
        format.xml  { render :xml => collection_model_ref.errors, :status => :unprocessable_entity }
            end
    end
  end
 
  def create
    self.collection_model_ref = model_class_ref.new(params[model_name_sym])
    respond_to do |format|
      if self.collection_model_ref.save
        flash[:notice] = succeeded_flash('was successfully created.')
        format.html { redirect_to collection_url }
        format.js
        format.xml  { render :xml => collection_model_ref, :status => :created, :location => collection_model_ref }
      else
        flash[:notice] = failed_flash("Creating")
        format.html { render :action => "new" }
        format.xml  { render :xml => collection_model_ref.errors, :status => :unprocessable_entity }
      end
    end
  end

 
  def destroy
    respond_to do |format|
      if(self.collection_model_ref.destroy)
        flash[:notice] = succeeded_flash("deleted (1).")
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = failed_flash("Deleting")
        format.html { redirect_to collection_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # string of commas separated ids to operate on
  def selected_ids(param_name)
    @selected_ids = params[param_name] || params[:selected_ids]
    if(@selected_ids && @selected_ids.kind_of?(Array))
      @selected_ids = @selected_ids.join(",") 
    end
    @selected_ids = @selected_ids.split(',')
  end


  def find_single
    collection_model_ref = model_class_ref.find(params[:id])
  end

  def check_for_cancel
      if params[:commit] == 'cancel'
        redirect_to :back and return
      end
  end

 def change
    @parent = Category.find(params[:category_id])
    @remove = params[:product][:move]
    @category = Category.find(params[:product][:category_id])
    @products = Product.find(params[:product_ids].map(&:to_i))
    @category.products = (@category.products - (@products & @category.products) + @products)
    @parent.products -= @products if @remove
    redirect_to category_products_url(@parent)
  end

end
end
