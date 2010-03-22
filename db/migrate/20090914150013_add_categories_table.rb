class AddCategoriesTable < ActiveRecord::Migration
  def self.up
      
  create_table :categories do |t|
      t.integer :parent_id,   :limit =>   6,  :null => true
      t.string  :name,        :limit =>  64,  :null => false, :default => ''
      t.string  :description, :limit => 512,  :null => false, :default => 'this description needs to be replaced'
      t.integer :position,    :limit => 10,   :null => false
      t.timestamps
  end
 
  add_index "categories", ["parent_id", "name"],
    :name => "index_categories_on_parent_id_and_name",
    :unique => true

  add_index "categories", ["parent_id", "position"],
    :name => "index_categories_on_parent_id_and_position",
    :unique => false
  end

  def self.down
    remove_index :categories, :name => "index_categories_on_parent_id_and_name"
    remove_index :categories, :name => "index_categories_on_parent_id_and_position"
    drop_table :categories
  end
end
