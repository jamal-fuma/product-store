require 'ruby-debug'
class CategoryProduct < ActiveRecord::Base
  default_scope :order => :position
  belongs_to :category
  belongs_to :product
  validates_presence_of :category
  validates_presence_of :product
  validates_uniqueness_of :product_id, :scope => [:category_id]

  # allows sorting based on position field
   acts_as_list :column => "position",
                :scope => :category_id

  def self.assign_products(product_ids,category)
    list,skip = *category.selected_products(product_ids)
    (list-skip).each{|n| 
      CategoryProduct.create!(:product_id => n, :category_id => category.id)
    }
    skip
  end

  def self.reorder_products(product_ids,category)
    # this passes but not quite right
    list,skip = *category.selected_products(product_ids)
    category.products.reorder(product_ids)
  end
  
  def self.remove_products(product_ids,category)
    list,skip = *category.selected_products(product_ids)
    CategoryProduct.destroy_all(
        :category_id => category.id,
        :product_id => skip
    ).size ==  skip.size
   end
end
