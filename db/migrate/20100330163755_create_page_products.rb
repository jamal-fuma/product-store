class CreatePageProducts < ActiveRecord::Migration
  def self.up
    create_table :page_products do |t|
      t.references :page,      :null => false
      t.references :product,       :null => false

      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :page_products
  end
end
