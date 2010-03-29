class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer :parent_id,   :limit =>   6,  :null => true
      t.integer :position,    :limit => 10,   :null => false
      t.string  :name,        :limit =>  64,  :null => false, :default => ''
      t.string  :description, :limit => 512,  :null => false, :default => 'this description needs to be replaced'
      t.timestamps
    end
    add_index "pages", ["parent_id", "name"],
      :name => "index_pages_on_parent_id_and_name",
      :unique => true

    add_index "pages", ["parent_id", "position"],
      :name => "index_pages_on_parent_id_and_position",
      :unique => false

    def self.down
      remove_index :pages, :name => "index_pages_on_parent_id_and_name"
      remove_index :pages, :name => "index_pages_on_parent_id_and_position"
      drop_table :pages
    end
  end     

