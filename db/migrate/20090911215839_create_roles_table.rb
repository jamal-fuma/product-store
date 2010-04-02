class CreateRolesTable < ActiveRecord::Migration
  def self.up
    
    create_table :roles do |t|
      t.string  :name,          :limit => 30,   :default => "Empty",     :null => false
      t.string  :description,   :limit => 300,  :default => "This description needs to be replaced",     :null => false
      t.boolean :active,                        :default => false,  :null => false
      t.integer :position,      :limit => 10,                       :null => false
      t.timestamps
    end
    
    add_index "roles", ["name"],      :name => "index_roles_on_name",     :unique => true
    add_index "roles", ["position"],  :name => "index_roles_on_position", :unique => false
  end

  def self.down
    remove_index :roles, :name => "index_roles_on_position"
    remove_index :roles, :name => "index_roles_on_name"
    drop_table :roles
  end
end
