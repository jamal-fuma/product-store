When /I view the images list/ do
  visit '/images'
end

#  I attach the file with content type of "image/jpeg" at "features/support/pic.jpg" to "Filename"
When /^I attach the file with content type of "([^\"]*)" at "([^\"]*)" to "([^\"]*)"$/ do |mime_type,path, field|
  attach_file(field, path,mime_type)
end


