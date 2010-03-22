Then /^"([^"]*)" should be selected for "([^"]*)"$/ do |value, field|
  field_labeled(field).element.search(".//option[@selected = 'selected']").inner_html.should =~ /#{value}/
end
Then /^I should see a "([^\"]*)" form with dom_id of "([^\"]+)"$/ do |legend,selector|
    response.should have_selector(selector) do |form|
        form.should contain(legend)
        form.should have_selector('[type=submit]')
#        form.should have_selector('[type=cancel]')
    end
end
