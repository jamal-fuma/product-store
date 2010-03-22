class ImageCategory < CategoryImage
  default_scope :order => :category_position
  belongs_to :category
  belongs_to :image
  validates_presence_of :category_id
  validates_presence_of :image_id
  validates_uniqueness_of :category_id, :scope => [:image_id]
 
   # allows sorting based on position field
   acts_as_list :column => "category_position", 
                :scope => :image_id

  def self.assign_categories(category_ids,image)
    skip,list,maps = *present_elements(category_ids,image)
    # the validation is on this incarnation of the model
    (list-skip).each{|n| 
      ImageCategory.create!(:category_id => n, :image_id => image.id) 
    }
    skip
   end

   def self.reorder_categories(category_ids,image)
    skip,list,maps = *present_elements(category_ids,image)
    image.categories.reorder(list)
   end
  
  def self.remove_categories(category_ids,image)
    skip,list,maps = *present_elements(category_ids,image)
    ImageCategory.destroy_all(
        :image_id => image.id,
        :category_id => skip
    ).size ==  skip.size
   end
  private

  def self.present_elements(category_ids,image)
    @ids = image.categories.map(&:id)
    skip = (@ids - ((@ids - category_ids)))
    maps = self.index_elements(category_ids)
    [skip,category_ids,maps]
  end
end
