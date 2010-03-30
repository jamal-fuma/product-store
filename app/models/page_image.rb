class PageImage < ActiveRecord::Base
  default_scope :order => :position
  belongs_to :page
  belongs_to :image
  validates_presence_of :page_id
  validates_presence_of :image_id
  validates_uniqueness_of :image_id, :scope => [:page_id]

  # allows sorting based on position field
   acts_as_list :column => "position",
                :scope => :page_id

  def self.assign_images(image_ids ,page)
    skip,list,maps = *present_elements(image_ids, page)
    (list-skip).each{|n| 
      PageImage.create!(:image_id => n, :page_id => page.id)
    }
    skip
  end

  def self.reorder_images(image_ids,page)
    skip,list,maps = *present_elements(image_ids,page)
    page.images.reorder(list)
  end
  
  def self.remove_images(image_ids,page)
    skip,list,maps = *present_elements(image_ids,page)
    PageImage.destroy_all(
        :page_id => page.id,
        :image_id => skip
    ).size ==  skip.size
   end
private
  def self.present_elements(image_ids,page)
    @ids = page.images.parents.map(&:id)
    skip = (@ids - ((@ids - image_ids)))
    maps = self.index_elements(image_ids)
    [skip,image_ids,maps]
  end
  
end
