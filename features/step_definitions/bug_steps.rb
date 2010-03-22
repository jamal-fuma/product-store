When /^I create a bug with a title of "([^\"]*)" and a description of "([^\"]*)"$/ do |title,description|
bug = Bug.find_by_title title
bug.destroy unless bug.nil?
visit '/bugs/new'
fill_in "Title", :with => title
fill_in "Description", :with => description
click_button "Save"
end

Then /^I should have a bug with a title of "([^\"]*)" and a status of "([^\"]*)"$/ do |title,status|
  bug = Bug.find_by_title title
  bug.human_readable_status == status
end

When /^I add a title of "([^\"]*)"$/ do |title|
  fill_in "Title", :with => title
end

When /^I add a description of "([^\"]*)"$/ do |description|
  fill_in "Description", :with => description
end
