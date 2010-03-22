class ProductImage < ActiveRecord::Base
  default_scope :order => :product_position
  belongs_to :image
  belongs_to :product
  validates_presence_of :image_id
  validates_presence_of :product_id
  validates_uniqueness_of :product_id, :scope => [:image_id]
 
   # allows sorting based on position field
   acts_as_list :column => "product_position", 
                :scope => :product_id

  def self.assign_images(image_ids,product)
    skip,list,maps = *present_elements(image_ids,product)
    # the validation is on this incarnation of the model
    (list-skip).each{|n| 
      ProductImage.create!(:image_id => n, :product_id => product.id) 
    }
    skip
   end

   def self.reorder_images(image_ids,product)
    skip,list,maps = *present_elements(image_ids,product)
    product.images.reorder(list)
   end
  
  def self.remove_images(image_ids,product)
    skip,list,maps = *present_elements(image_ids,product)
    ProductImage.destroy_all(
        :product_id => product.id,
        :image_id => skip
    ).size ==  skip.size
   end
  private

  def self.present_elements(image_ids,product)
    @ids = product.images.map(&:id)
    skip = (@ids - ((@ids - image_ids)))
    maps = self.index_elements(image_ids)
    [skip,image_ids,maps]
  end
end
