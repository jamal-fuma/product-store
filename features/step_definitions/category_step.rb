When /^I create a category with a name of "([^\"]*)" and a parent of "([^\"]*)"$/ do |name, parent|
  category = Category.find_by_name name
  category.destroy unless category.nil?
  visit '/categories/new'
  fill_in "Name", :with => name
  select(parent, :from => "Parent") 
  click_button "Save"  
end

Then /^I should have a category with a name of "([^\"]*)"$/ do |name|
  category = Category.find_by_name name
end

Then /^I should have a category with a name of "([^\"]*)" and a parent of "([^\"]*)"$/ do |name, parent|
  visit '/categories'
  if("" == parent)
    response.should contain(name)
  else
    response.should contain(parent)
    click_link(parent)
    response.should contain(name)
    response.should contain(parent)
  end
end


