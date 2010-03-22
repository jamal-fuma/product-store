class ProductCategory < CategoryProduct
  default_scope :order => :category_position
  belongs_to :product
  belongs_to :category
  validates_presence_of :category
  validates_presence_of :product
  validates_uniqueness_of :category_id, :scope => [:product_id]
# allows sorting based on position field
   acts_as_list :column => "category_position",
                :scope => :product_id

  def self.assign_categories(category_ids,product)
    list,skip = *product.selected_categories(category_ids)
    (list-skip).each{|n|
      next if n.nil?
      ProductCategory.create!(:category_id => n, :product_id => product.id)
    }
    skip
  end

  def self.reorder_categories(category_ids, product)
    list,skip = *product.selected_categories(category_ids)
    product.categories.reorder(category_ids)
  end
  
  def self.remove_categories(category_ids, product)
    list,skip = *product.selected_categories(category_ids)
    ProductCategory.destroy_all(
        :product_id => product.id,
        :category_id => skip
    ).size ==  skip.size
   end
end
