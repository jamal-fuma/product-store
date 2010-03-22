class CategoryImage < ActiveRecord::Base
  default_scope :order => :position
  belongs_to :category
  belongs_to :image
  validates_presence_of :category_id
  validates_presence_of :image_id
  validates_uniqueness_of :image_id, :scope => [:category_id]

  # allows sorting based on position field
   acts_as_list :column => "position",
                :scope => :category_id

  def self.assign_images(image_ids ,category)
    skip,list,maps = *present_elements(image_ids, category)
    (list-skip).each{|n| 
      CategoryImage.create!(:image_id => n, :category_id => category.id)
    }
    skip
  end

  def self.reorder_images(image_ids,category)
    skip,list,maps = *present_elements(image_ids,category)
    category.images.reorder(list)
  end
  
  def self.remove_images(image_ids,category)
    skip,list,maps = *present_elements(image_ids,category)
    CategoryImage.destroy_all(
        :category_id => category.id,
        :image_id => skip
    ).size ==  skip.size
   end
private
  def self.present_elements(image_ids,category)
    @ids = category.images.parents.map(&:id)
    skip = (@ids - ((@ids - image_ids)))
    maps = self.index_elements(image_ids)
    [skip,image_ids,maps]
  end
  
end
