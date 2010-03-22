class AddPositionToImageProduct < ActiveRecord::Migration
  def self.up
    add_column :product_images, :product_position, :integer
    add_index :product_images, ["image_id", "product_position"], :name => "index_product_images_on_image_id_and_product_position", :unique => false
  end

  def self.down
    remove_index :product_images, :name => "index_product_images_on_image_id_and_product_position"
    remove_column :products_images, :product_position
  end
end
