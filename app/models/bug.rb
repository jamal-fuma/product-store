module Faults
  New       = 0
  Open      = 1
  Reopened  = 2
  Resolved  = 3
  Values    =["New Fault", "Open Fault", "Reopened Fault", "Resolved Fault"] 

end

class Bug < ActiveRecord::Base
  include Faults
  default_scope :order => :position
  named_scope :active,        :conditions => ["status >= ? and status < ?",0,3]
  named_scope :reopened,      :conditions => {:status  => 2}
  named_scope :resolved,      :conditions => {:status  => 3}
  
  acts_as_list :column => "position"

  belongs_to :user
  has_many :comments, :dependent => :destroy

  validates_associated :comments
  accepts_nested_attributes_for :comments
  
  validates_length_of :title, :within => 10..30
  validates_length_of :description, :within => 10..200
  validates_uniqueness_of :title
  validates_format_of :title, :with => /\A([a-z"'A-Z])+([a-z"'A-Z 0-9]+)\Z/ , :message => "Bugs need a title"
 
  validates_format_of :description, :with => /^([\S"'\d\n\r ]+)$/ , :message => "Bugs need a description"
  validates_length_of :description, :within => 10..200
  
  validates_inclusion_of :status, :in => [
    Faults::New,
    Faults::Open,
    Faults::Reopened,
    Faults::Resolved
  ]
  def self.drop_down_list
    [
      [Faults::Values[Faults::New],Faults::New],
      [Faults::Values[Faults::Open],Faults::Open],
      [Faults::Values[Faults::Reopened],Faults::Reopened],
      [Faults::Values[Faults::Resolved],Faults::Resolved]
    ]
  end

  def human_readable_status
    Faults::Values[self.status]
  end

  def human_title
    %Q{[#{self.human_readable_status}] : "#{self.title}"}
  end
end
