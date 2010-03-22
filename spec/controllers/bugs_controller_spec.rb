require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_bug_update(bug,attributes,value,notice)
  # stub find method to return our mock object 
  has_accessor(Bug,:find,bug)
 
  # stub update method to return desired test result
  has_action(bug,:update_attributes,attributes,value) 
  # stub model field accessor for name
  attribute_accessors(bug,attributes)
  
  # call the method under test 
  put 'update', :id => bug.id, :bug => attributes
    
  # check controller returns a model instance
  attributes_match(bug,:bug,attributes)
  assigns[:bug].should_not be_new_record

  # check there is visual feedback of the user action
  assert_flash(notice)
 
 # carry on with specific tests
 bug
end

def before_bug_create(bug,attributes,value,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(bug,:save,value)
  has_accessor(bug,:new_record?,true)
  attribute_accessors(bug,attributes)
  # all bugs are scoped by the current user, so we no longer call Bug.new 
  #has_accessor(Bug,:new,bug) 
#  bugs = mock(@bugs) 
#  bugs.stub!(:build).and_return(bug) 
#  has_accessor(@current_user,:bugs,bugs)
  has_many_association_build(@current_user,:bugs,@bugs,bug)

  # call the method under test 
  # check controller returns a model instance
  # check there is visual feedback of the user action
  # carry on with specific tests
  post 'create', :bug =>  attributes
  assigns[:bug].should be_new_record
  attributes_match(bug,:bug,attributes)
  assert_flash(notice)
  bug
end

def before_bug_index(bugs,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bugs) 
  get 'index'
  assert_list_present(bugs,:bugs)
end 

def before_bug_show(bug,comments,attributes,value,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  has_accessor(bug,:comments,comments)
  attribute_accessors(bug,attributes)
  get 'show', :id => value
  attributes_match(bug,:bug,attributes)
  assert_list_present(comments,:comments,notice)
end 

def before_bug_new(bug,attributes)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  attribute_accessors(bug,attributes)

  # all bugs are scoped by the current user, so we no longer call Bug.new 
  #has_accessor(Bug,:new,bug) 
  bugs = mock(@bugs) 
  bugs.stub!(:build).and_return(bug) 
  has_accessor(@current_user,:bugs,bugs)
  get 'new'
  attributes_match(bug,:bug,attributes)
  flash[:notice].should be_nil
  bug
end

def before_bug_edit(bug,attributes,value)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  attribute_accessors(bug,attributes)
  get 'edit', :id => value
  attributes_match(bug,:bug,attributes)
  flash[:notice].should be_nil
  bug
end

def before_bug_destroy(bug,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Bug,:find,bug)
  has_accessor(bug,:destroy,value)
  delete 'destroy', :id => bug.id
  assert_flash(notice)
  bug
end

def before_bug_reorder(bugs,name,value,notice)
  list = bugs.map(&:id)
  has_action(Bug,:reorder,list,value)
  post 'reorder', {name => list}
  assert_flash(notice)
end

describe BugsController do
  fixtures :bugs
  
  before do 
    @current_user = stub_login(controller)

    @attributes = {
      "title" => "A valid bug title",      
      "human_title" => "A valid bug title",      
      "description" => "A valid bug description",
    }
    @updated_attributes = {
      "title"         => "A new valid bug title",      
      "human_title"   => "A new valid bug title",      
      "description"   => "A new valid bug description",
      "user_id"       => @current_user.id
    }
    @bug = mock_model(Bug)
  end

    # test index, no branching
    it "should render the index page" do
    @bugs = [@bug,@bug]
    before_bug_index(@bugs,"Bugs found (2)")
        response.should render_template('index')
    end

    # test show, no branching
    it "should render the show page" do
    @bugs = [@bug,@bug]
    before_bug_show(@bug,
                @bugs,
                @attributes,
                @bug.id,
                "Bug has (2) comments.")
        response.should render_template('show')
    end

    # test new, no branching
    it "should render the new page" do
      before_bug_new(@bug,@attributes)
      response.should render_template('new')
    end
  
    # test edit, no branching
    it "should render the edit page" do
      before_bug_edit(@bug,@attributes,@bug.id)
      response.should render_template('edit')
    end

    # test destroy, success branch
    it "should redirect to index with a notice on successful destroy" do
        @bug = before_bug_destroy(@bug,true,"Bug was successfully deleted.")
        response.should redirect_to(bugs_path)
    end
    
    # test destroy, failure branch
    it "should redirect to index with a notice on failed destroy" do
        @bug = before_bug_destroy(@bug,false,"Deleting bug failed due to errors")
        response.should redirect_to(bugs_path)
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      [false,true].each do |value|
        [:selected_ids,:all_bugs].each do |name|
          notice = case value
            when true  : "Bugs reordered (2)."
            when false : "Reordering bugs failed due to errors"
          end
          before_bug_reorder([@bug,@bug],name,value,notice)
          response.should redirect_to(bugs_path)
        end
      end
    end
   
    # test create, success branch
    it "should redirect to index with a notice on successful save" do
        @bug = before_bug_create(@bug,@updated_attributes,true,"Bug was successfully created.")
        response.should redirect_to(bugs_path)
    end
    
    # test create, failure branch
    it "should rerender new on failed save" do
        @bug = before_bug_create(@bug,@updated_attributes,false, "Creating bug failed due to errors")
        response.should render_template('new')
    end

    # test update, success branch
    it "should redirect to show with a notice on successful update" do
        # test update, success branch
        @bug = before_bug_update(@bug,@updated_attributes,true,"Bug was successfully updated.")
        response.should redirect_to(bug_path(@bug))
    end
    
    # test update, failure branch
    it "should rerender edit on failed save" do
        # test update, failure branch
        @bug = before_bug_update(@bug,@updated_attributes,false,"Updating bug failed due to errors")
        response.should render_template('edit')
    end
  end
__END__
