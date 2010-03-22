require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_role_index(roles,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  Role.stub!(:paginate).and_return(roles)
  get 'index'
  assert_list_present(roles,:roles)
  assert_flash(notice)
end 

def before_role_show(role,users,attributes,value,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Role,:find,role)
  has_named_scope(role,:users,users)
  attribute_accessors(role,attributes)
  get 'show', :id => value
  attributes_match(role,:role,attributes)
  assert_list_present(users,:users,notice)
  assert_flash(notice)
end 

def before_role_new(role,attributes)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Role,:new,role) 
  attribute_accessors(role,attributes)
  get 'new'
  attributes_match(role,:role,attributes)
  flash[:notice].should be_nil
  role
end

def before_role_edit(role,attributes,value)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Role,:find,role)
  attribute_accessors(role,attributes)
  get 'edit', :id => value
  attributes_match(role,:role,attributes)
  flash[:notice].should be_nil
  role
end

def before_role_destroy(role,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Role,:find,role)
  has_accessor(role,:destroy,value)
  delete 'destroy', :id => role.id
  assert_flash(notice)
  role
end

def before_role_update(role,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Role,:find,role)
  has_action(role,:update_attributes,attributes,value) 
  attribute_accessors(role,attributes)

  put 'update', :role =>  attributes, :id => role.id
  assigns[:role].should_not be_new_record
  attributes_match(role,:role,attributes)
  assert_flash(notice)
  role
end

def before_role_create(role,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_action(Role,:new,attributes,role) 
  has_accessor(role,:save,value)
  has_accessor(role,:new_record?,true)
  attribute_accessors(role,attributes)

  post 'create', :role =>  attributes
  assigns[:role].should be_new_record
  attributes_match(role,:role,attributes)
  assert_flash(notice)
  role
end

def before_role_reorder(roles,name,value,notice)
  list = roles.map(&:id)
  has_action(Role,:reorder,list,value)
  post 'reorder', {name => list}
  assert_flash(notice)
end

def before_role_remove(roles,name,value,notice)
  list = roles.map(&:id)
  has_action(Role,:remove,list,value)
  delete 'remove', {name => list}
  assert_flash(notice)
end

describe RolesController do
  before do 
    @current_user = stub_login(controller)
    @attributes = {
      "name" => "A valid role name",      
      "description" => "A valid role description",
    }
    @updated_attributes = {
      "name" => "A new valid category name",      
      "description" => "A new valid role description",
    }
    @role    = mock_model(Role)
    @category = mock_model(Category)
    @user  = mock_model(Product)
  end

    # test index, no branching
    it "should render the index page" do
        before_role_index([@role,@role],"Roles found (2).")
        response.should render_template('index')
    end
  
    # test show, no branching
    it "should render the show page" do
    before_role_show(@role,
                [@user,@user],
                @attributes,
                @role.id,
                "Role has (2) users.")
        response.should render_template('show')
    end
  
    # test new, no branching
    it "should render the new page" do
      before_role_new(@role,@attributes)
      response.should render_template('new')
    end
  
    # test edit, no branching
    it "should render the edit page" do
      before_role_edit(@role,@attributes,@role.id)
      response.should render_template('edit')
    end

    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
        [:selected_ids,:all_roles].each do |name|
          notice = case value
            when true  : "Roles deleted (1)."
            when false : "Deleting role failed due to errors." 
          end
         before_role_destroy(@role,value,notice)
         response.should redirect_to(roles_path)
        end
      end
    end
    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      [false,true].each do |value|
        [:role_ids].each do |name|
          notice = case value
            when true  : "Roles removed (2)."
            when false : "Removing roles failed due to errors."
          end
          before_role_remove([@role,@role],name,value,notice)
          response.should redirect_to(roles_path)
        end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      [false,true].each do |value|
        [:selected_ids,:all_roles].each do |name|
          notice = case value
            when true  : "Roles reordered (2)."
            when false : "Reordering roles failed due to errors."
          end
          before_role_reorder([@role,@role],name,value,notice)
          response.should redirect_to(roles_path)
        end
      end
    end
  
    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
      [false,true].each do |value|
        notice = case value
          when true  : "Role was successfully created."
          when false : "Creating role failed due to errors."
        end
        before_role_create(@role,@attributes,value,notice)
        case value
          when true  : response.should redirect_to(roles_path) 
          when false : response.should render_template('new')
        end
      end
    end

    # test update, success/failure branch
    it "should redirect to index with a notice on update" do
      [false,true].each do |value|
        notice = case value
          when true  : "Role was successfully updated."
          when false : "Updating role failed due to errors."
        end
        before_role_update(@role,@updated_attributes,value,notice)
        case value
          when true  : response.should redirect_to(roles_path) 
          when false : response.should render_template('edit')
        end
      end  
    end
end
__END__
 

