class Category < ActiveRecord::Base
  include ParameterScanning
  default_scope :order => 'position'
  named_scope :parents, :conditions => {:parent_id => nil}, :order => :position
  named_scope :children, :conditions => 'parent_id is not null'
  named_scope :subcategories, lambda {|pid| {:conditions => {:parent_id => pid}, :order => :position } }
  
  # actual join tables associations
  has_many :category_images, :dependent => :destroy, :order => :position
  has_many :category_products, :dependent => :destroy, :order => :position
  
  # has_many associations
  has_many :images, :through => :category_images
  has_many :products, :through => :category_products
  
  # allow nested model creation 
  accepts_nested_attributes_for :images
  accepts_nested_attributes_for :products

 # pagination for results
  cattr_reader :per_page
  @@per_page = 20

# allows self-referencial relationships
   acts_as_tree :foreign_key => :parent_id, 
                 :order => "position"

# allows sorting based on position field
   acts_as_list :column => "position", 
                 :scope => :parent_id

# validations for nested models
  validates_associated :images
   validates_associated :products

# attribute validations
    validates_length_of :name, :within => 3..64
    validates_length_of :description, :maximum => 512, :message => "%d is larger then maximum size of 511"
    validates_uniqueness_of :name, :scope => :parent_id
    def self.to_list
     list = [["Navigation",nil]]
     Category.all.each{|c| 
        list << [c.long_name,c.id] 
     }
     list
    end
  
    def self.drop_down_list(id=nil)
      list = [["Navigation",nil]]
      if id
          @category = Category.find(id)
          list << [@category.long_name,@category.id]
          list << @category.children.map{ |c|  [c.long_name,c.id] }
      else
       Category.subcategories(id).each{|c| 
          list << [c.long_name,c.id] 
       }
      end
      list
    end

  def categories
       Category.subcategories(self.id) 
  end

  def ancestors_name
      parent ?  (parent.ancestors_name + parent.name + ':') : "Navigation:"
   end
   
   def long_name
      ancestors_name + name
   end

  def selected_images(ids)
    selected(ids,self.images.map(&:id))
  end
  def selected_products(ids)
    selected(ids,self.products.map(&:id))
  end
end
