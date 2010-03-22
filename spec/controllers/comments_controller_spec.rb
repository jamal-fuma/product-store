require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_comment_index(bug,comments,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  has_named_scope(bug,:comments,comments)
  get 'index', :bug_id => bug.id
  assigns[:bug].should_not be_new_record
  assert_list_present(comments,:comments)
  assert_flash(notice)
end 

def before_comment_show(bug,comment,title,attributes,value)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(comment,:title,title)
  attribute_accessors(comment,attributes)
  has_accessor(Bug,:find,bug)
  has_many_association_find(bug,:comments,[comment,comment],comment)
  get 'show', :id => value,:bug_id => bug.id
  attributes_match(comment,:comment,attributes)
  assert_flash(title)
end 

def before_comment_new(bug,comments,comment,attributes)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  has_many_association_build(bug,:comments,comments,comment)
  attribute_accessors(comment,attributes)
  get 'new', :bug_id => bug.id
  attributes_match(comment,:comment,attributes)
  flash[:notice].should be_nil
  comment
end

def before_comment_edit(bug,comment,attributes,value)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  attribute_accessors(comment,attributes)
  has_many_association_find(bug,:comments,[comment,comment],comment)
  get 'edit', :id => value, :bug_id => bug.id
  attributes_match(comment,:comment,attributes)
  flash[:notice].should be_nil
  comment
end

def before_comment_destroy(bug,comment,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  has_many_association_find(bug,:comments,[comment,comment],comment)
  has_accessor(comment,:destroy,value)
  delete 'destroy', :id => comment.id, :bug_id => bug.id
  assert_flash(notice)
  comment
end

def before_comment_update(bug,comment,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  has_action(comment,:update_attributes,attributes,value) 
  has_many_association_find(bug,:comments,[comment,comment],comment)
  attribute_accessors(comment,attributes)

  put 'update', :comment =>  attributes, :id => comment.id, :bug_id => bug.id

  assigns[:comment].should_not be_new_record
  attributes_match(comment,:comment,attributes)
  assert_flash(notice)
  comment
end

def before_comment_create(bug,comment,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  has_accessor(comment,:save,value)
  has_accessor(comment,:new_record?,true)
  comment.stub!(:user=)
  attribute_accessors(comment,attributes)
  has_many_association_build(bug,:comments,[comment,comment],comment)
  post 'create', :comment =>  attributes, :bug_id => bug.id
  assigns[:comment].should be_new_record
  attributes_match(comment,:comment,attributes)
  assert_flash(notice)
  comment
end

def before_comment_reorder(bug,comments,name,value,notice)
  list = comments.map(&:id)
  has_action(Comment,:reorder,list,value)
  has_accessor(Bug,:find,bug)
  post 'reorder', {:bug_id => bug.id, name => list}
  assert_flash(notice)
end

def before_comment_remove(bug,comments,name,value,notice)
  list = comments.map(&:id)
  has_action(Comment,:remove,list,value)
  has_accessor(Bug,:find,bug)
  delete 'remove', {:bug_id => bug.id, name => list}
  assert_flash(notice)
end

describe CommentsController do
  before do 
    @user = stub_login(controller)
    @comment    = mock_model(Comment)
    @bug = mock_model(Bug)
    @attributes = {
      "user_id" => @user.id, 
      "name" => "A valid comment name",      
      "description" => "A valid comment description",
    }
    @updated_attributes = {
      "user_id" => @user.id, 
      "name" => "A new valid category name",      
      "description" => "A new valid comment description",
    }
    @title = "a random title"
  end

    # test index, no branching
    it "should render the index page" do
        before_comment_index(@bug,[@comment,@comment],"Comments found (2).")
        response.should render_template('index')
    end
  
    # test show, no branching
    it "should render the show page" do
    before_comment_show(@bug,@comment,@title,
                @attributes,
                @comment.id)
        response.should render_template('show')
    end
  
    # test new, no branching
    it "should render the new page" do
      before_comment_new(@bug,@user,@comment,@attributes)
      response.should render_template('new')
    end
  
    # test edit, no branching
    it "should render the edit page" do
      before_comment_edit(@bug,@comment,@attributes,@comment.id)
      response.should render_template('edit')
    end

    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
        [:selected_ids,:all_comments].each do |name|
          notice = case value
            when true  : "Comments deleted (1)."
            when false : "Deleting comment failed due to errors." 
          end
         before_comment_destroy(@bug,@comment,value,notice)
         response.should redirect_to(bug_comments_url(@bug))
        end
      end
    end

    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      [false,true].each do |value|
        [:selected_ids,:all_comments].each do |name|
          notice = case value
            when true  : "Comments removed (2)."
            when false : "Removing comments failed due to errors."
          end
          before_comment_remove(@bug,[@comment,@comment],name,value,notice)
          response.should redirect_to(bug_comments_url(@bug))
        end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      [false,true].each do |value|
        [:selected_ids,:all_comments].each do |name|
          notice = case value
            when true  : "Comments reordered (2)."
            when false : "Reordering comments failed due to errors."
          end
          before_comment_reorder(@bug,[@comment,@comment],name,value,notice)
          response.should redirect_to(bug_comments_url(@bug))
        end
      end
    end

  
    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
      [false,true].each do |value|
        notice = case value
          when true  : "Comment was successfully created."
          when false : "Creating comment failed due to errors."
        end
        before_comment_create(@bug,@comment,@attributes,value,notice)
        case value
          when true  : response.should redirect_to(bug_url(@bug)) 
          when false : response.should render_template('new')
        end
      end
    end

    # test update, success/failure branch
    it "should redirect to index with a notice on update" do
      [false,true].each do |value|
        notice = case value
          when true  : "Comment was successfully updated."
          when false : "Updating comment failed due to errors."
        end
        before_comment_update(@bug,@comment,@updated_attributes,value,notice)
        case value
          when true  : response.should redirect_to(bug_url(@bug)) 
          when false : response.should render_template('edit')
        end
      end  
    end
end
__END__
 

