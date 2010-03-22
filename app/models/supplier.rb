class Supplier < ActiveRecord::Base
  include NumberFormatting
  default_scope :order => :position
  acts_as_list :column => "position"
  has_many :supplier_products, :dependent => :destroy, :order => :position
  has_many :products, :through => :supplier_products
  accepts_nested_attributes_for :products

     validates_presence_of :name, :message => "Suppliers need a name"
    validates_presence_of :description, :message => "Suppliers need a description"

    validates_presence_of :account
    validates_presence_of :sort_code
    validates_presence_of :bank_name
    validates_presence_of :dialing_code
    validates_presence_of :telephone
    validates_presence_of :email
    
    validates_uniqueness_of :name
    validates_uniqueness_of :email
    virtual_attr :telephone, 
                 :telephone_number,
                 :cast  => :to_i,
                 :regexp => /(\d)(?=(\d\d\d)+(?!\d))/

    virtual_attr :account,
                 :account_number,
                 :cast  => :to_i,
                 :regexp => /(\d)(?=(\d\d\d)+(?!\d))/


    virtual_attr :dialing_code, 
                 :dial_code,
                 :cast  => :to_i,
                 :regexp => /(\d)(?=(\d\d\d)+(?!\d))/

    virtual_attr :sort_code, 
                 :account_sort_code,
                 :cast  => :to_i,
                 :regexp => /(\d)(?=(\d\d)+(?!\d))/

  def self.drop_down_list
    Supplier.all.map{ |s| [ s.name,s.id ] } 
  end
 
 
end
