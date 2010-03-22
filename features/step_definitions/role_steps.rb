When /^I create a role with a name of "([^\"]*)" and a description of "([^\"]*)"$/ do |name,description|
role = Role.find_by_name name
role.destroy unless role.nil?
visit '/roles/new'
fill_in "Role Name", :with => name
fill_in "Role Description", :with => description
click_button "Save"
end

Then /^I should have a role with a name of "([^\"]*)" and a description of "([^\"]*)"$/ do |name,description|
  role = Role.find_by_name_and_description name,description
end

When /^I add a name of "([^\"]*)" to the role$/ do |name|
  fill_in "Role Name", :with => name
end

When /^I add a description of "([^\"]*)" to the role$/ do |description|
  fill_in "Role Description", :with => description
end
