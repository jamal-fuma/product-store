class AddPositionToCategoryImage < ActiveRecord::Migration
  def self.up
    add_column :category_images, :category_position, :integer
    add_index :category_images, ["image_id", "category_position"], :name => "index_category_images_on_image_id_and_category_position", :unique => false
  end

  def self.down
    remove_index :category_images, :name => "index_category_images_on_image_id_and_category_position"
    remove_column :category_images, :category_position
  end
end
