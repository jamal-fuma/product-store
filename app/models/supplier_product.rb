class SupplierProduct < ActiveRecord::Base
  default_scope :order => :position
  belongs_to :supplier
  belongs_to :product
  validates_presence_of :product_id
  validates_presence_of :supplier_id
  validates_uniqueness_of :product_id, :scope => [:supplier_id]

  # allows sorting based on position field
   acts_as_list :column => "position",
                :scope => :supplier_id

  def self.assign_products(product_ids,supplier)
    skip,list,maps = *present_elements(product_ids, supplier)
    (list-skip).each{|n| 
      SupplierProduct.create!(:product_id => n, :supplier_id => supplier.id)
    }
    skip
  end

  def self.reorder_products(product_ids,supplier)
    skip,list,maps = *present_elements(product_ids,supplier)
    supplier.products.reorder(list)
  end
  
  def self.remove_products(product_ids,supplier)
    skip,list,maps = *present_elements(product_ids,supplier)
    SupplierProduct.destroy_all(
        :supplier_id => supplier.id,
        :product_id => skip
    ).size ==  skip.size
   end
private
  def self.present_elements(product_ids,supplier)
    @ids = supplier.products.map(&:id)
    skip = (@ids - ((@ids - product_ids)))
    maps = self.index_elements(product_ids)
    [skip,product_ids,maps]
  end
  
end
