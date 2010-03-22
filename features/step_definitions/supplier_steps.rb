When /^I create a supplier with a name of "([^\"]*)" and a description of "([^\"]*)" and a bank account of "([^\"]*)" and a sort code of "([^\"]*)" and a bank name of "([^\"]*)" and a dial code of "([^\"]*)" and a telephone of "([^\"]*)" and an email of "([^\"]*)"$/ do |name, description, account_num, sort_code, bank, dial_code,telephone, email|
  supplier = Supplier.find_by_name name
  supplier.destroy unless supplier.nil?
  visit '/suppliers/new'
  fill_in "Name", :with => name
  fill_in "Description", :with => description
  fill_in "Account Number", :with => account_num
  fill_in "Sort Code", :with => sort_code
  fill_in "Bank Name", :with => bank
  fill_in "Dialing code", :with => dial_code
  fill_in "Telephone", :with => telephone
  fill_in "Email Address", :with => email
  click_button "Save"
end

Then /^I should have a supplier with a name of "([^\"]*)" and a description of "([^\"]*)" and a bank account of "([^\"]*)" and a sort code of "([^\"]*)" and a bank name of "([^\"]*)" and a dial code of "([^\"]*)" and a telephone of "([^\"]*)" and an email of "([^\"]*)"$/ do |name, description, account_num, sort_code, bank, dial_code,telephone, email|
  visit '/suppliers'
  supplier = Supplier.find_by_name name
  response.should contain(name)
  supplier.name == name && 
  supplier.description == description &&
  supplier.account == account_num &&
  supplier.sort_code == sort_code &&
  supplier.bank_name == bank &&
  supplier.dial_code == dial_code &&
  supplier.telephone == telephone &&
  supplier.email == email
end

When /^I add a name of "([^\"]*)" to the supplier$/ do |name|
  fill_in "Name", :with => name
end

When /^I add a description of "([^\"]*)" to the supplier$/ do |description|
  fill_in "Description", :with => description
end
