class AddCategoryPositionToCategoryProducts < ActiveRecord::Migration
  def self.up
    add_column :category_products, :category_position, :integer
    add_index :category_products, ["product_id", "category_position"], :name => "index_category_products_on_product_id_and_category_position", :unique => false
  end

  def self.down
    remove_index :category_products, :name => "index_category_products_on_product_id_and_category_position"
    remove_column :category_products, :category_position
  end
end
