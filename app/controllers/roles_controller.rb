class RolesController < ApplicationController
  before_filter :check_for_cancel, :only => [:create,:update]
  layout "roles"

  # GET /roles
  # GET /roles
  def index
    respond_to do |format|
      format.html {
        @reorder_url = reorder_roles_url
        @roles = Role.paginate(:page => params[:page])
        flash[:notice] = "Roles found (#{@roles.size})."
      }
      format.xml  { render :xml => @roles }
    end
  end

  # GET /roles/1
  # GET /roles/1.xml
 def show
    @role = Role.find(params[:id])
    @reorder_url = reorder_roles_url
    @users = @role.users.paginate(:page => params[:page])
    
    
    flash[:notice] = "Role has (#{@users.size}) users."
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @role }
    end
  end

  # GET /roles/new
  # GET /roles/new.xml
  def new
    flash[:notice] = nil
    @role = Role.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @role }
      format.js  { render :partial => 'role', 
                          :locals => {:role => @role},
                          :layout => false 
      }
    end
  end

  # GET /roles/1/edit
  def edit
    flash[:notice] = nil
    @role = Role.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @role }
      format.js  { render :partial => 'role', 
                          :locals => {:role => @role},
                          :layout => false 
      }
    end
  end

  # POST /roles
  # POST /roles.xml
  def create
    @role = Role.new(params[:role])
    @reorder_url = reorder_roles_url
    respond_to do |format|
      if @role.save
        flash[:notice] = 'Role was successfully created.'
        format.html { redirect_to roles_url }
        format.xml  { render :xml => @role, :status => :created, :location => @role }
        format.js
      else
        flash[:notice] = "Creating role failed due to errors."
        format.html { render :action => "new" }
        format.xml  { render :xml => @role.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'new', :layout => false }
      end
    end
  end

  # PUT /roles/1
  # PUT /roles/1.xml
  def update
    @role = Role.find(params[:id])
    @reorder_url = reorder_roles_url
    respond_to do |format|
      if @role.update_attributes(params[:role])
        flash[:notice] = 'Role was successfully updated.'
        format.html { redirect_to roles_url }
        format.xml  { head :ok }
        format.js {@role.reload}
      else
        flash[:notice] = "Updating role failed due to errors."
        format.html { render :action => "edit" }
        format.xml  { render :xml => @role.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'edit', :layout => false }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.xml
  def destroy
    @role = Role.find(params[:id])
    @reorder_url = reorder_roles_url
    respond_to do |format|
      if(@role.destroy)
        flash[:notice] = "Roles deleted (1)."
        format.html { redirect_to roles_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Deleting role failed due to errors."
        format.html { redirect_to roles_url }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/remove
  # DELETE /roles/remove.xml
 def remove
    @reorder_url = reorder_roles_url
    @ids = selected_ids(:role_ids)
    respond_to do |format|
      if(Role.remove(@ids))
        flash[:notice] = "Roles removed (#{@ids.size})."
        format.html { redirect_to roles_url }
        format.xml  { head :ok }
        format.js {
            @roles = Role.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Removing roles failed due to errors."
        format.html { redirect_to roles_url }
        format.xml  { head :unprocessable_entity }
        format.js 
      end
    end
  end
 
  # POST /roles/remove
  # POST /roles/remove.xml
 def reorder
    @reorder_url = reorder_roles_url
    @ids = selected_ids(:all_roles)
    respond_to do |format|
      if(Role.reorder(@ids))
        flash[:notice] = "Roles reordered (#{@selected_ids.size})."
        format.html { redirect_to roles_url }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Reordering roles failed due to errors."
        format.html { redirect_to roles_url }
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
