class Role < ActiveRecord::Base
    default_scope :order =>:position
    acts_as_list :column => "position"
    validates_uniqueness_of :name
    validates_format_of :name, :with => /\A([a-z"'A-Z])+([a-z"'A-Z 0-9]+)\Z/ , :message => "Roles need a name"
    validates_format_of :description, :with => /^([\S"'\d\n\r ]+)$/ , :message => "Roles need a description"
    has_many :users
end
