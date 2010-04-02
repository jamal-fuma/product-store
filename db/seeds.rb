# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
    Role.create! :id => 1, :name => "Administrator", :description => "System Administrators can manage users", :active => 1, :position => 1
    Role.create! :id => 2, :name => "User", :description => "Users can ammend data but cannot manage users", :active => 1, :position => 2
    Role.create! :id => 3, :name => "Guest", :description => "Guests can view data but cannot manage users or ammend data", :active => 1, :position => 3
