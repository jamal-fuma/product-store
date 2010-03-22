class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer :position
      t.string   "name",        :limit => 64,  :default => "",                                      :null => false
      t.string   "description", :limit => 512, :default => "this description needs to be replaced", :null => false
       # attachment_fu fields
      t.integer :parent_id
      t.string  :content_type
      t.string  :filename
      t.string  :thumbnail
      t.integer :size
      t.integer :height
      t.integer :width
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
