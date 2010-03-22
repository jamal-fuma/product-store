class AddPositionToSupplierProduct < ActiveRecord::Migration
  def self.up
    add_column :supplier_products, :supplier_position, :integer
    add_index "supplier_products", ["supplier_id", "supplier_position"], :name => "index_supplier_products_on_supplier_id_and_supplier_position", :unique => false
  end

  def self.down
    remove_column :supplier_products, :supplier_position
    remove_index "supplier_products", :name => "index_supplier_products_on_supplier_id_and_supplier_position"
  end
end
