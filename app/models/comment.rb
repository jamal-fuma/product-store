class Comment < ActiveRecord::Base
  default_scope :order => :position
  validates_length_of :detail, :within => 10..200
  belongs_to :bug
  belongs_to :user
  acts_as_list :column => "position", :scope => :bug_id
  
  def title
    %Q{Comment posted by (#{self.user.name}) for #{self.bug.human_title}.}
  end
end

