class BugsController < ApplicationController
  before_filter :check_for_cancel, :only => [:create,:update]
  layout "bugs"

  # GET /bugs
  # GET /bugs.xml
  def index
    respond_to do |format|
      format.html {
        @reorder_url = reorder_bugs_url
        @bugs = Bug.paginate(:page => params[:page])
        flash[:notice] = "Bugs found (#{@bugs.size})."
      }
      format.xml  { render :xml => Bug.all }
    end
  end

  # GET /bugs/1
  # GET /bugs/1.xml
  def show
    @bug = Bug.find(params[:id], :include => :comments)
    @reorder_url = reorder_bugs_url
    @comments = @bug.comments.paginate(:page => params[:page])
    flash[:notice] = "Bug has (#{@comments.size}) comments."
    respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @bug }
    end
  end

  # GET /bugs/new
  # GET /bugs/new.xml
  def new
    flash[:notice] = nil
    @bug = current_user.bugs.build(:status => 0)
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @bug }
      format.js  { render :partial => 'bug', 
                          :locals => {:bug => @bug},
                          :layout => false 
      }
    end
  end

  # GET /bugs/1/edit
  def edit
    flash[:notice] = nil
    @bug = Bug.find(params[:id], :include => :comments)
    respond_to do |format|
      format.html
      format.xml  { render :xml => @bug }
      format.js  { render :partial => 'bug', 
                          :locals => {:bug => @bug},
                          :layout => false 
      }
    end
  end

  # POST /bugs
  # POST /bugs.xml
  def create
    @bug = current_user.bugs.build(params[:bug])
    @reorder_url = reorder_bugs_url
    respond_to do |format|
      if @bug.save
        flash[:notice] = 'Bug was successfully created.'
        format.html {
          redirect_to bugs_url
        }
        format.xml  { 
          render :xml => @bug, :status => :created, :location => @bug
        }
        format.js {
            @bugs = Bug.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Creating bug failed due to errors"
        format.html { render :action => "new" }
        format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'new', :layout => false }
      end
    end
  end

  # PUT /bugs/1
  # PUT /bugs/1.xml
  def update
    @bug = Bug.find(params[:id], :include => :comments)
    @reorder_url = reorder_bugs_url
    respond_to do |format|
      params[:bug][:user_id] = current_user.id
      if @bug.update_attributes(params[:bug])
        flash[:notice] = 'Bug was successfully updated.'
        format.html { redirect_to bug_url(@bug) }
        format.xml  { head :ok }
        format.js { @bug.reload }
      else
        flash[:notice] = "Updating bug failed due to errors"
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
        format.js   { render :action => 'edit', :layout => false }
      end
    end
  end

  # DELETE /bugs/1
  # DELETE /bugs/1.xml
  def destroy
    @bug = Bug.find(params[:id], :include => :comments)
    @reorder_url = reorder_bugs_url
    respond_to do |format|
     if @bug.destroy
        flash[:notice] = 'Bug was successfully deleted.'
        format.html { redirect_to(bugs_url) }
        format.xml  { head :ok }
      else
        flash[:notice] = "Deleting bug failed due to errors"
        format.html { redirect_to(bugs_url) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /bugs/remove
  # DELETE /bugs/remove.xml
 def remove
    @reorder_url = reorder_bugs_url
    @ids = selected_ids(:bug_ids)
    respond_to do |format|
      if(Bug.remove(@ids))
        flash[:notice] = "Bugs removed (#{@ids.size})."
        format.html { redirect_to(bugs_url) }
        format.xml  { head :ok }
        format.js {
            @bugs = Bug.paginate(:page => params[:page])
        }
      else
        flash[:notice] = "Removing bugs failed due to errors"
        format.html { redirect_to(bugs_url) }
        format.xml  { head :unprocessable_entity }
        format.js 
      end
    end
  end

  # POST /bugs/reorder
  # POST /bugs/reorder.xml
 def reorder
    @reorder_url = reorder_bugs_url
    @ids = selected_ids(:all_bugs)
    respond_to do |format|
      if(Bug.reorder(@ids))
        flash[:notice] = "Bugs reordered (#{@ids.size})."
        format.html { redirect_to(bugs_url) }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Reordering bugs failed due to errors"
        format.html { redirect_to(bugs_url) }
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
