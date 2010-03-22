Given /^a logged in user with a login of "([^\"]*)" and a password of "([^\"]*)"$/ do |login, password|

  user = User.find_by_login login
  user.destroy unless user.nil?
  visit '/signup'
  fill_in "Login", :with => login
  fill_in "Email", :with => "#{login}@#{login}.com"
  fill_in "Password", :with => password
  fill_in "Confirm Password", :with => password
  click_button 'Sign Up'
  visit '/login'
  fill_in "Login", :with => login
  fill_in "Password", :with => password
  click_button
end

Given /^a logged in admin with a login of "([^\"]*)" and a password of "([^\"]*)"$/ do |login, password|
  user = User.find_by_login login
  user.destroy unless user.nil?
  visit '/signup'
  fill_in "Login", :with => login
  fill_in "Email", :with => "#{login}@#{login}.com"
  fill_in "Password", :with => password
  fill_in "Confirm Password", :with => password
  click_button 'Sign Up'
  visit '/login'
  fill_in "Login", :with => login
  fill_in "Password", :with => password
  click_button
end
