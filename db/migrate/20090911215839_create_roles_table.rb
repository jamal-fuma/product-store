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
    
    Role.create! :id => 1, :name => "Administrator", :description => "System Administrators can manage users", :active => 1, :position => 1
    Role.create! :id => 2, :name => "User", :description => "Users can ammend data but cannot manage users", :active => 1, :position => 2
    Role.create! :id => 3, :name => "Guest", :description => "Guests can view data but cannot manage users or ammend data", :active => 1, :position => 3
  end

  def self.down
    remove_index :roles, :name => "index_roles_on_position"
    remove_index :roles, :name => "index_roles_on_name"
    drop_table :roles
  end
end
