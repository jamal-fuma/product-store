class CreateBugsTable < ActiveRecord::Migration
  def self.up
    
  create_table :bugs do |t|
      t.references :user,                                       :null => false
      t.string  :title,         :limit => 30,   :default => "", :null => false
      t.string  :description,   :limit => 100,  :default => "", :null => false
      t.integer :status,        :limit => 2,                    :null => false
      t.integer :position,      :limit => 10,                   :null => false
      t.timestamps
    end
    
    add_index "bugs", ["title"],  :name => "index_bugs_on_title", :unique => true
    add_index "bugs", ["status"], :name => "index_bugs_on_status", :unique => false 
    add_index "bugs", ["user_id"],   :name => "index_bugs_on_user_id",  :unique => false

  end

  def self.down
    remove_index "bugs", :name => "index_bugs_on_title"
    remove_index "bugs", :name => "index_bugs_on_status" 
    remove_index "bugs", :name => "index_bugs_on_user_id"
    drop_table :bugs
  end
end
