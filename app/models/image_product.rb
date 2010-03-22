class ImageProduct < ProductImage
  default_scope :order => :position
  belongs_to :product
  belongs_to :image
  validates_presence_of :product_id
  validates_presence_of :image_id
  validates_uniqueness_of :image_id, :scope => [:product_id]
# allows sorting based on position field
   acts_as_list :column => "position", 
                 :scope => :product_id

  def self.assign_products(product_ids,image)
    skip,list,maps = *present_elements(product_ids,image)
    (list-skip).each{|n| 
      ImageProduct.create!(:product_id => n, :image_id => image.id)
    }
    skip
  end

  def self.reorder_products(product_ids,image)
    skip,list,maps = *present_elements(product_ids, image)
    image.products.reorder(list)
  end
  
  def self.remove_products(product_ids,image)
    skip,list,maps = *present_elements(product_ids, image)
    ImageProduct.destroy_all(
        :image_id => image.id,
        :product_id => skip
    ).size ==  skip.size
   end
private
  def self.present_elements(product_ids,image)
    @ids = image.products.map(&:id)
    skip = (@ids - ((@ids - product_ids)))
    maps = self.index_elements(product_ids)
    [skip,product_ids,maps]
  end
end
