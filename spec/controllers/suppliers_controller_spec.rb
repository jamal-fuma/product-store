require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def before_supplier_index(suppliers,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  Supplier.stub!(:paginate).and_return(suppliers)
  get 'index'
  assert_list_present(suppliers,:suppliers)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_suppliers_url
end 

def before_supplier_show(supplier,products,attributes,value,notice)
  # stub new method to return our mock object 
  # stub save method to return desired test result
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Supplier,:find,supplier)
  has_named_scope(supplier,:products,products)
  attribute_accessors(supplier,attributes)
  get 'show', :id => value
  attributes_match(supplier,:supplier,attributes)
  assert_list_present(products,:products,notice)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_suppliers_url
end 

def before_supplier_new(supplier,attributes)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Supplier,:new,supplier) 
  attribute_accessors(supplier,attributes)
  get 'new'
  attributes_match(supplier,:supplier,attributes)
  flash[:notice].should be_nil
  supplier
end

def before_supplier_edit(supplier,attributes,value)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Supplier,:find,supplier)
  attribute_accessors(supplier,attributes)
  get 'edit', :id => value
  attributes_match(supplier,:supplier,attributes)
  flash[:notice].should be_nil
  supplier
end

def before_supplier_destroy(supplier,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Supplier,:find,supplier)
  has_accessor(supplier,:destroy,value)
  delete 'destroy', :id => supplier.id
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_suppliers_url
  supplier
end

def before_supplier_update(supplier,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_accessor(Supplier,:find,supplier)
  has_action(supplier,:update_attributes,attributes,value) 
  attribute_accessors(supplier,attributes)

  put 'update', :supplier =>  attributes, :id => supplier.id
  assigns[:supplier].should_not be_new_record
  attributes_match(supplier,:supplier,attributes)
  assert_flash(notice)
  assigns[:reorder_url].should == reorder_suppliers_url
  supplier
end

def before_supplier_create(supplier,attributes,value,notice)
  # stub new method to return our mock object 
  # stub new_record? method to always pass
  # stub model field accessors
  has_action(Supplier,:new,attributes,supplier) 
  has_accessor(supplier,:save,value)
  has_accessor(supplier,:new_record?,true)
  attribute_accessors(supplier,attributes)

  post 'create', :supplier =>  attributes
  assigns[:supplier].should be_new_record
  attributes_match(supplier,:supplier,attributes)
  assigns[:reorder_url].should == reorder_suppliers_url
  assert_flash(notice)
  supplier
end

def before_supplier_reorder(suppliers,name,value,notice)
  list = suppliers.map(&:id)
  has_action(Supplier,:reorder,list,value)
  post 'reorder', {name => list}
  assigns[:reorder_url].should == reorder_suppliers_url
  assert_flash(notice)
end

def before_supplier_remove(suppliers,name,value,notice)
  list = suppliers.map(&:id)
  has_action(Supplier,:remove,list,value)
  post 'remove', {name => list}
  assigns[:reorder_url].should == reorder_suppliers_url
  assert_flash(notice)
end

describe SuppliersController do
  before do 
    @current_product = stub_login(controller)
    @attributes = {
      "name"          => "Random Supplier",
      "description"   => "A random supplier description",
      "account"       => 12345,
      "sort_code"     => 12345,
      "bank_name"     => "A random bank",
      "dialing_code"  => 123456,
      "telephone"     => 123344,
      "email"         => "foo@bar.com",
      "position"      => "1"
    }
    @updated_attributes = {
      "name"          => "New Random Supplier",
      "description"   => "A new random supplier description",
      "account"       => 12345,
      "sort_code"     => 12345,
      "bank_name"     => "A new random bank",
      "dialing_code"  => 123456,
      "telephone"     => 123344,
      "email"         => "foo@bar.com",
      "position"      => "2",
    }
    @supplier    = mock_model(Supplier)
    @product  = mock_model(Product)
  end

    # test index, no branching
    it "should render the index page" do
        before_supplier_index([@supplier,@supplier],"Suppliers found (2).")
        response.should render_template('index')
    end
  
    # test show, no branching
    it "should render the show page" do
    before_supplier_show(@supplier,
                [@product,@product],
                @attributes,
                @supplier.id,
                "Supplier has (2) products.")
        response.should render_template('show')
    end
  
    # test new, no branching
    it "should render the new page" do
      before_supplier_new(@supplier,@attributes)
      response.should render_template('new')
    end
  
    # test edit, no branching
    it "should render the edit page" do
      before_supplier_edit(@supplier,@attributes,@supplier.id)
      response.should render_template('edit')
    end

    # test destroy, success/failure branch
    it "should redirect to index with a notice on destroy" do
      [false,true].each do |value|
        [:selected_ids,:all_suppliers].each do |name|
          notice = case value
            when true  : "Suppliers deleted (1)."
            when false : "Deleting supplier failed due to errors." 
          end
         before_supplier_destroy(@supplier,value,notice)
         response.should redirect_to(suppliers_path)
        end
      end
    end
    # test remove, success/failure branch
    it "should redirect to index with a notice on remove" do
      [false,true].each do |value|
        [:selected_ids,:supplier_ids].each do |name|
          notice = case value
            when true  : "Suppliers removed (2)."
            when false : "Removing suppliers failed due to errors."
          end
          before_supplier_remove([@supplier,@supplier],name,value,notice)
          response.should redirect_to(suppliers_path)
        end
      end
    end

    # test reorder, success/failure branch
    it "should redirect to index with a notice on reorder" do
      [false,true].each do |value|
        [:selected_ids,:all_suppliers].each do |name|
          notice = case value
            when true  : "Suppliers reordered (2)."
            when false : "Reordering suppliers failed due to errors."
          end
          before_supplier_reorder([@supplier,@supplier],name,value,notice)
          response.should redirect_to(suppliers_path)
        end
      end
    end
  
    # test create, success/failure branch
    it "should redirect to index with a notice on create" do
      [false,true].each do |value|
        notice = case value
          when true  : "Supplier was successfully created."
          when false : "Creating supplier failed due to errors."
        end
        before_supplier_create(@supplier,@attributes,value,notice)
        case value
          when true  : response.should redirect_to(suppliers_path) 
          when false : response.should render_template('new')
        end
      end
    end

    # test update, success/failure branch
    it "should redirect to index with a notice on update" do
      [false,true].each do |value|
        notice = case value
          when true  : "Supplier was successfully updated."
          when false : "Updating supplier failed due to errors."
        end
        before_supplier_update(@supplier,@updated_attributes,value,notice)
        case value
          when true  : response.should redirect_to(suppliers_path) 
          when false : response.should render_template('edit')
        end
      end  
    end
end
__END__
 

