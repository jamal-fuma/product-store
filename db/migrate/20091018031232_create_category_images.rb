class CreateCategoryImages < ActiveRecord::Migration
  def self.up
    create_table :category_images do |t|
      t.references :image
      t.references :category
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :category_images
  end
end
