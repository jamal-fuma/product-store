class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table "products", :force => true do |t|
        t.integer  "supplier_id",                :default => 6,       :null => false
        t.string   "name",        :limit => 64,  :default => "empty", :null => false
        t.integer  "cost_price",                 :default => 0,       :null => false
        t.integer  "weight",                     :default => 0,       :null => false
        t.string   "order_code",  :limit =>  16, :default => "empty", :null => false
        t.string   "packaging",   :limit => 100, :default => "empty", :null => false
        t.string   "description", :limit => 1024, :default => "empty", :null => false
        t.string   "filename",    :limit => 200, :default => "empty", :null => false
        t.integer   "position",   :limit =>  10,                      :null => false
        t.timestamps
    end
    add_index "products", ["name"], :name => "index_products_on_name"
  end

  def self.down
    remove_index "products", :name => "index_products_on_name"
    drop_table :products
  end
end
