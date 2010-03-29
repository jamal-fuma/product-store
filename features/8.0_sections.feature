Feature: 5.0 Section Management
As a user
I want to manage my sections

Scenario: 5.0.1 I want to view all my sections in a list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Sections"
Then I should be on the sections listing page
And I should see "Sections found (0)"

Scenario: 5.0.2 I want to hide the flash when creating a new section
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Sections"
And I follow "new section"
Then I should not see "Sections found (0)"
And I should see a "Section Details" form with dom_id of "#new_section"

Scenario: 5.0.3 I want to create a new section with a default values
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Sections"
And I follow "new section"
Then I should see a "Section Details" form with dom_id of "#new_section"
And the "Name" field should contain "empty"
And the "Cost price" field should contain "0"
And the "Weight" field should contain "0"
And the "Description" field should contain "empty"
And the "Packaging" field should contain "empty"
And the "Filename" field should contain "empty"
And the "Order code" field should contain "empty"

Scenario: 5.0.4 I want to create a new section called cheese
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Sections"
And I follow "new section"
And I fill in "Cheese" for "Name"
And I press "Save"
Then I should be on the sections listing page
And I should see "Sections found (1)"
And I should see "Cheese"

Scenario: 5.0.5 I want to view a single section from the list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Sections"
And I follow "new section"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
Then I should see "Showing details for (Cheese)"
And I should see "Section has (0) images and (0) suppliers and (0) categories." 
And I should see "Categories (0)"
And I should see "Images (0)"
And I should see "Suppliers (0)"
And I should see "Edit Cheese"
And I should see "Edit Section"
And I should see "New Section"

Scenario: 5.0.6 I want to see the headings for a section
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Sections"
And I follow "new section"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
Then I should see "Showing details for (Cheese)"
And I should see "Section has (0) images and (0) suppliers and (0) categories." 
And I should see "Categories (0)"
And I should see "Images (0)"
And I should see "Suppliers (0)"
And I should see "Edit Cheese"
And I should see "New Section"
And I should see "Name"
And I should see "Cost"
And I should see "Weight"
And I should see "Order Code"
And I should see "Categories"
And I should see "Suppliers"
And I should see "Images"
And I should see "Picture"

Scenario: 5.0.7 I want see an edit form for an existing section
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Sections"
And I follow "new section"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
And I follow "Edit Cheese"
Then I should see "Showing details for (Cheese)"
And the "Name" field should contain "Cheese"

Scenario: 5.0.8 I want to see update an existing section
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Sections"
And I follow "new section"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
And I follow "Edit Cheese"
And I fill in "Yogurt" for "Name"
And I fill in "Rotted bovine extract" for "Description"
And I press "Save"
Then I should be on the sections listing page
And I should see "Sections found (1)"
And I should see "Yogurt"
And I should see "Rotted bovine extract"
