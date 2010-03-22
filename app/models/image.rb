require 'open-uri'
class Image < ActiveRecord::Base
  include ParameterScanning
  include NumberFormatting
  default_scope :order => :position
  named_scope :parents, :conditions => {:parent_id => nil}, :order => :position
  named_scope :children, :conditions => 'parent_id is not null'
  
  # actual join tables associations
  has_many :image_products, :dependent => :destroy
  has_many :image_categories, :dependent => :destroy
  
  # has_many associations
  has_many :products, :through => :image_products
  has_many :categories, :through => :image_categories
  
  # virtual attributes
  conditional_attr :display_name, :name, :filename, lambda{|val|  !val.blank? }

  # allow nested model creation 
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :products

 # pagination for results
  cattr_reader :per_page
  @@per_page = 10

# allows self-referencial relationships
   acts_as_tree :foreign_key => :parent_id, 
                 :order => "position"

# allows sorting based on position field
   acts_as_list :column => "position", 
                 :scope => :parent_id


    has_attachment :content_type   => ["png","gif","jpeg"].map { |t| "image/#{t}" } ,
        :resize_to      => "320x160",
        # this doesn't stop the upload just the save, meh
        :max_size       => 3.megabytes,
        :path_prefix    => "public/images/products",
        :storage        => :file_system,
        :thumbnails     => {:thumb => "40x80>" }
  
    validates_as_attachment

def source_url=(url)
    return nil if not url
    http_getter = Net::HTTP
    uri = URI.parse(url)
    response = http_getter.start(uri.host, uri.port) {|http|
      http.get(uri.path)
    }
    return nil unless ([Net::HTTPSuccess,Net::HTTPOK].include? response.class )
    file_data = response.body
    return nil if file_data.nil? || file_data.size == 0
    self.content_type = response.content_type
    self.uploaded_data = file_data
    self.filename = uri.path.split('/')[-1]
  end

  def self.to_list
  list = [["Images",nil]]
     Image.parents.each{|c| 
        list << [c.filename,c.id] 
     }
  list
  end

# Or, we can just pass a URL to Image#uploaded_data
def uploaded_data=(filedata_or_url)
  if filedata_or_url.is_a? String and filedata_or_url.match /^http(s)?:\/\// then
    file = open(filedata_or_url)
    file.extend(UrlUpload)
    super(file)
  else
    super(filedata_or_url)
  end
end

  def selected_categories(ids)
    selected(ids,self.categories.map(&:id))
  end
  def selected_products(ids)
    selected(ids,self.products.map(&:id))
  end
end

module UrlUpload
  def filename
    base_uri.to_s.split("/").last
  end

  def original_filename
    base_uri.to_s.split("/").last
  end

end
