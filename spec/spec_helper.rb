# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] ||= 'test'
require File.dirname(__FILE__) + "/../config/environment" unless defined?(RAILS_ROOT)
require 'spec/autorun'
require 'spec/rails'
require 'spec/custom_matchers'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

Spec::Runner.configure do |config|
  # If you're not using ActiveRecord you should remove these
  # lines, delete config/database.yml and disable :active_record
  # in your config/boot.rb
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
  config.include(CustomMatchers)

  # == Fixtures
  #
  # You can declare fixtures for each example_group like this:
  #   describe "...." do
  #     fixtures :table_a, :table_b
  #
  # Alternatively, if you prefer to declare them only once, you can
  # do so right here. Just uncomment the next line and replace the fixture
  # names with your fixtures.
  #
  # config.global_fixtures = :table_a, :table_b
  #
  # If you declare global fixtures, be aware that they will be declared
  # for all of your examples, even those that don't use them.
  #
  # You can also declare which fixtures to use (for example fixtures for test/fixtures):
  #
  # config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
  #
  # == Mock Framework
  #
  # RSpec uses it's own mocking framework by default. If you prefer to
  # use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  #
  # == Notes
  #
  # For more information take a look at Spec::Runner::Configuration and Spec::Runner
end

# stub out login requirement for controllers  
def stub_login(controller)
  @current_user = mock_model(User, :id => 1)
  controller.stub!(:login_required).and_return(:true)
  controller.stub!(:current_user).and_return(@current_user)
  @current_user
end

def has_accessor(model,method,value,times=:once)
  # stub model field accessor for name
  model.should_receive(
        method
    ).send(times).and_return(value)
end
def has_action(model,method,args,value,times=:once)
  # stub model field accessor for name
  model.should_receive(
        method
    ).with(
        args
    ).send(times).and_return(value)
end

def attributes_match(model,method,attributes)
  assigns[method].should be(model)
  assigns[method].should_not be(nil)
  attributes.keys.each do |key|
    assigns[method].send(key).should == attributes[key]
  end
end

def attribute_accessors(model,attributes)
  attributes.keys.each do |key|
    has_accessor(model,key,attributes[key])
  end
end

def assert_flash(notice)
# check there is visual feedback of the user action
  flash[:notice].should_not be_nil
  flash[:notice].should == notice
end

def assert_list_present(collection,name, message=nil)
  assigns[name].should_not be_nil
  assigns[name].should == collection
  if(message)
    assert_flash(message)
  else
    assert_flash("#{name.to_s.capitalize} found (#{collection.size}).")
  end
end

def has_named_scope(root,name,items,times=:once)
  children = mock(items) 
  children.stub!(:paginate).and_return(items) 
  has_accessor(root,name,children,times)
end

def has_many_association_build(root,name,items,item,times=:once)
  children = mock(items) 
  children.stub!(:build).and_return(item) 
  has_accessor(root,name,children,times)
end

def has_many_association_find(root,name,items,item,times=:once)
  children = mock(items) 
  children.stub!(:find).and_return(item)
  has_accessor(root,name,children,times)
end

def before_product_view_helper(product,categories,images,suppliers,times=:once)
  has_accessor(Product,:find,product,times)
  has_named_scope(product,:suppliers,suppliers,times)
  has_named_scope(product,:categories,categories,times)
  has_named_scope(product,:images,images,times)
end

def before_image_view_helper(image,categories,products,times=:once)
  has_accessor(Image,:find,image,times)
  has_named_scope(image,:products,products,times)
  has_named_scope(image,:categories,categories,times)
end

def before_supplier_view_helper(supplier,products,times=:once)
  has_accessor(Supplier,:find,supplier,times)
  has_named_scope(supplier,:products,products,times)
end

def before_category_view_helper(category,categories,images,products,times=:once)
  has_accessor(Category,:find,category,times)
  has_named_scope(category,:products,products,times)
  has_named_scope(category,:categories,categories,times)
  has_named_scope(category,:images,images,times)
end

