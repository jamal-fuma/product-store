require 'ruby-debug'
class PageProduct < ActiveRecord::Base
  default_scope :order => :position
  belongs_to :page
  belongs_to :product
  validates_presence_of :page
  validates_presence_of :product
  validates_uniqueness_of :product_id, :scope => [:page_id]

  # allows sorting based on position field
   acts_as_list :column => "position",
                :scope => :page_id

  def self.assign_products(product_ids,page)
    list,skip = *page.selected_products(product_ids)
    (list-skip).each{|n| 
      PageProduct.create!(:product_id => n, :page_id => page.id)
    }
    skip
  end

  def self.reorder_products(product_ids,page)
    # this passes but not quite right
    list,skip = *page.selected_products(product_ids)
    page.products.reorder(product_ids)
  end
  
  def self.remove_products(product_ids,page)
    list,skip = *page.selected_products(product_ids)
    PageProduct.destroy_all(
        :page_id => page.id,
        :product_id => skip
    ).size ==  skip.size
   end
end
