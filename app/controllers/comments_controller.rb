class CommentsController < ApplicationController
  before_filter :check_for_cancel, :only => [:create,:update]
  layout "bugs"
  # GET /comments
  # GET /comments
  def index
    @bug = Bug.find(params[:bug_id])
    @comments = @bug.comments.paginate(:page => params[:page])
    flash[:notice] = "Comments found (#{@comments.size})."
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
 def show
    @bug = Bug.find(params[:bug_id])
    @comment = @bug.comments.find(params[:id])
    flash[:notice]   = @comment.title
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    flash[:notice] = nil
    respond_to do |format|
      @bug = Bug.find(params[:bug_id])
      @comment = @bug.comments.build(:user_id => current_user.id)
      format.html # new.html.erb
      format.xml { render :xml => @comment }
      format.js  { render :partial => 'comment', 
                          :locals => {:comment => @comment},
                          :layout => false 
                 }
    end
  end

  # GET /comments/1/edit
  def edit
    flash[:notice] = nil
    @bug = Bug.find(params[:bug_id])
    @comment = @bug.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.xml
  def create
    respond_to do |format|
      @bug = Bug.find(params[:bug_id])
      @comment = @bug.comments.build(params[:comment],:user_id => current_user.id)
      if @comment.save
        flash[:notice] = 'Comment was successfully created.'
        format.html { redirect_to bug_url(@bug) }
        format.xml  { render :xml => @bug, :status => :created, :location => @comment }
        format.js
      else
        flash[:notice] = "Creating comment failed due to errors."
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    respond_to do |format|
      @bug = Bug.find(params[:bug_id])
      @comment = @bug.comments.find(params[:id])
      @user = current_user
      if @comment.update_attributes(params[:comment].merge(:user_id => @user.id))
        flash[:notice] = 'Comment was successfully updated.'
        format.html { redirect_to bug_url(@bug) }
        format.xml  { head :ok }
        format.js
      else
        flash[:notice] = "Updating comment failed due to errors."
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    respond_to do |format|
      @bug = Bug.find(params[:bug_id])
      @comment = @bug.comments.find(params[:id])
      if(@comment.destroy)
        flash[:notice] = "Comments deleted (1)."
        format.html { redirect_to bug_comments_url(@bug) }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Deleting comment failed due to errors."
        format.html { redirect_to bug_comments_url(@bug) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/remove
  # DELETE /comments/remove.xml
 def remove
    respond_to do |format|
      @bug = Bug.find(params[:id])
      if(Comment.remove(selected_ids(:all_comments)))
        flash[:notice] = "Comments removed (#{@selected_ids.size})."
        format.html { redirect_to bug_comments_url(@bug) }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Removing comments failed due to errors."
        format.html { redirect_to bug_comments_url(@bug) }
        format.xml  { head :unprocessable_entity }
      end
    end
  end
 
  # POST /comments/remove
  # POST /comments/remove.xml
 def reorder
    respond_to do |format|
      @bug = Bug.find(params[:bug_id])
      if(Comment.reorder(selected_ids(:all_comments)))
        flash[:notice] = "Comments reordered (#{@selected_ids.size})."
        format.html { redirect_to bug_comments_url(@bug) }
        format.xml  { head :ok }
        format.js 
      else
        flash[:notice] = "Reordering comments failed due to errors."
        format.html { redirect_to bug_comments_url(@bug) }
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
 
