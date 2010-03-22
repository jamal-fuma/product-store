class CreateCategoryProducts < ActiveRecord::Migration
  def self.up
    create_table :category_products do |t|
      t.references :category,      :null => false
      t.references :product,       :null => false

      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :category_products
  end
end
