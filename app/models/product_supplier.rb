class ProductSupplier < SupplierProduct
  default_scope :order => :supplier_position
  belongs_to :product
  belongs_to :supplier
  validates_presence_of :product_id
  validates_presence_of :supplier_id
  validates_uniqueness_of :supplier_id, :scope => [:product_id]

  # allows sorting based on position field
   acts_as_list :column => "supplier_position",
                :scope => :product_id

  def self.assign_suppliers(supplier_ids,product)
    skip,list,maps = *present_elements(supplier_ids, product)
    (list-skip).each{|n| 
      ProductSupplier.create!(:supplier_id => n, :product_id => product.id)
    }
    skip
  end

  def self.reorder_suppliers(supplier_ids,product)
    skip,list,maps = *present_elements(supplier_ids,product)
    product.suppliers.reorder(list)
  end
  
  def self.remove_suppliers(supplier_ids,product)
    skip,list,maps = *present_elements(supplier_ids,product)
    ProductSupplier.destroy_all(
        :product_id => product.id,
        :supplier_id => skip
    ).size ==  skip.size
   end
private
  def self.present_elements(supplier_ids,product)
    @ids = product.suppliers.map(&:id)
    skip = (@ids - ((@ids - supplier_ids)))
    maps = self.index_elements(supplier_ids)
    [skip,supplier_ids,maps]
  end
  
end
