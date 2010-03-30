class CreatePageImages < ActiveRecord::Migration
  def self.up
    create_table :page_images do |t|
      t.references :image
      t.references :page
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :page_images
  end
end
