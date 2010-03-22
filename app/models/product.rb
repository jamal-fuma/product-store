class Product < ActiveRecord::Base
  include ParameterScanning
  include NumberFormatting

  acts_as_list :column => "position"
  default_scope :order => :position
  
  has_many :product_images, :dependent => :destroy, :order => :position, :autosave => true
  has_many :category_products, :dependent => :destroy, :order => :position, :autosave => true
  has_many :supplier_products, :dependent => :destroy, :order => :position, :autosave => true

  has_many :images, :through => :product_images
  has_many :categories, :through => :category_products
  has_many :suppliers, :through => :supplier_products
  
  accepts_nested_attributes_for :images,     :allow_destroy => :true
  accepts_nested_attributes_for :categories, :allow_destroy => :true
  accepts_nested_attributes_for :suppliers,  :allow_destroy => :true
  
  virtual_attr :volumetric,:shipping_weight, :cast => :to_f
  virtual_attr :sale_price,:price, :cast => :to_i

  weight_attr :weight, :volumetric
  money_attr :cost_price, :sale_price, :multiplier => 2.5

  validates_uniqueness_of :name

  cattr_reader :per_page
  @@per_page = 20

  def self.drop_down_list
    self.all.map{ |prod| [ prod.name,prod.id ] } 
  end

  def selected_images(ids)
    selected(ids,self.images.map(&:id))
  end

  def selected_suppliers(ids)
    selected(ids,self.suppliers.map(&:id))
  end

  def selected_categories(ids)
    selected(ids,self.categories.map(&:id))
  end
end
