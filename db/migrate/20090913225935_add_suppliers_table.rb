class AddSuppliersTable < ActiveRecord::Migration
  def self.up
     create_table :suppliers do |t|
        t.string  :name,          :limit => 30,   :default => "", :null => false
        t.string  :description,   :limit => 100,  :default => "", :null => false
       
        t.integer :account,       :limit => 10,   :default => 0,:null => false
        t.integer :sort_code,     :limit => 10,   :default => 0,:null => false
        t.string  :bank_name,     :limit => 30,   :default => "", :null => false

        t.integer :dialing_code,  :limit => 10,   :default => 207, :null => false
        t.integer :telephone,     :limit => 10,   :default =>0,    :null => false
        t.string  :email,         :limit => 35,   :default => "", :null => false
        t.integer :position,      :limit => 10,   :null => false
        t.timestamps
     end
     add_index "suppliers", ["name"], :name => "index_suppliers_on_name", :unique => true
     add_index "suppliers", ["position"], :name => "index_suppliers_on_position", :unique => false
       
  end

  def self.down
    remove_index :suppliers, :name => "index_suppliers_on_name"
    remove_index :suppliers, :name => "index_suppliers_on_position"
    drop_table :suppliers
  end
end
