ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'

class ActiveSupport::TestCase
  # Transactional fixtures accelerate your tests by wrapping each test method
  # in a transaction that's rolled back on completion.  This ensures that the
  # test database remains unchanged so your fixtures don't have to be reloaded
  # between every test method.  Fewer database queries means faster tests.
  #
  # Read Mike Clark's excellent walkthrough at
  #   http://clarkware.com/cgi/blosxom/2005/10/24#Rails10FastTesting
  #
  # Every Active Record database supports transactions except MyISAM tables
  # in MySQL.  Turn off transactional fixtures in this case; however, if you
  # don't care one way or the other, switching from MyISAM to InnoDB tables
  # is recommended.
  #
  # The only drawback to using transactional fixtures is when you actually 
  # need to test transactions.  Since your test is bracketed by a transaction,
  # any transactions started in your code will be automatically rolled back.
  self.use_transactional_fixtures = true

  # Instantiated fixtures are slow, but give you @david where otherwise you
  # would need people(:david).  If you don't want to migrate your existing
  # test cases which use the @david style and don't mind the speed hit (each
  # instantiated fixtures translates to a database query per test method),
  # then set this back to true.
  self.use_instantiated_fixtures  = false

  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
   def mk_products
      # create some test products
      @first_product   = Product.create!(:name => "Test product 1")
      @second_products = Product.create!(:name => "Test product 2") 
      @product_ids = Product.all.map(&:id)
      assert_equal(2,Product.all.size)
      [@first_product,@second_product]
   end

   def mk_categories
      # create some test categories
      @first_category = Category.create! :name => "Acme", :parent_id => nil
      @second_category = Category.create! :name => "Widgets", :parent_id => nil
      @category_ids    = Category.all.map(&:id)
      assert_equal(2,Category.all.size)
    [@first_category,@second_category]
  end

  def mk_images
    @first_image  = Image.new(:name => "Test product 1")
    @first_image.uploaded_data = "http://www.seedsofitaly.com/objects/product_images/c4e87a3a.jpg"
    @first_image.save!
    @second_image = Image.new(:name => "Test product 2") 
    @second_image.uploaded_data = "http://www.seedsofitaly.com/objects/product_images/c4e87a3a.jpg" 
    @second_image.save!
    @image_ids    = Image.parents.map(&:id)
    assert_equal(4,Image.all.size)
    assert_equal(2,@image_ids.size)
    [@first_image,@second_image]
  end

  def mk_supplier(name,email)
   Supplier.create!(:name => name,
     :account => 12445, :sort_code => 12445, :bank_name => "Test ", :dialing_code => 12445, :telephone => 12445, :email => email,
      :description => "a random blurb") 
  end

  def mk_suppliers
      # create some test suppliers
      @first_supplier   = mk_supplier("Test supplier 1","supplier@foo.bar")
      @second_supplier  = mk_supplier("Test supplier 2","supplier2@foo.co.uk")
      @supplier_ids = Supplier.all.map(&:id)
      assert_equal(2,Supplier.all.size)
      [@first_supplier,@second_supplier]
   end
end
