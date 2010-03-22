Feature: 4.0 Category Managements
As a user
I want to manage my categories 
So I can keep group products by category

Scenario: 4.0.1 I want to view all my categories in a list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Categories"
Then I should be on the categories listing page
And I should see "Categories found (0)"

Scenario: 4.0.2 I want to hide the flash when creating a new category
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Categories"
And I follow "new category"
Then I should not see "Categories found (0)"
And I should see a "Category Details" form with dom_id of "#new_category"

Scenario: 4.0.3 I want to create a new category with a default values
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Categories"
And I follow "new category"
Then I should see a "Category Details" form with dom_id of "#new_category"
And the "Name" field should contain ""
And the "Description" field should contain ""
And "Navigation" should be selected for "Parent"

Scenario: 4.0.4 I want to create a new category with assigned values
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Categories"
And I should see a "red" foreground on a "green" background in "upper left corner"
And I follow "new category"
And I fill in "Acme" for "Name"
And I fill in "Any old tosh" for "Description"
And I select "Navigation" from "Parent"
And I press "Save"
Then I should be on the categories listing page
And I should see "Categories found (1)" 
And I should have a category with a name of "Acme"

Scenario: 4.0.5 Submit invalid category form
Given a logged in user with a login of "john" and a password of "secret"
When I follow "new category"
And I fill in "A" for "Name"
And I select "Navigation" from "Parent"
And I press "Save"
Then I should see "Saving category failed due to errors"
And I should not see "Categories found (0)" 
And I should be on the categories listing page
And I should have a category with a name of "Acme"

Scenario: 4.0.6 Adding multiple category with valid details
Given a logged in user with a login of "john" and a password of "secret"
When I create a category with a name of "Acme" and a parent of "Navigation"
And I create a category with a name of "Widgets" and a parent of "Navigation"
And I follow "Categories"
Then I should be on the categories listing page
And I should not see "Categories found (0)" 
And I should see "Categories found (2)" 
And I should see "Widgets"
And I should see "Acme"

Scenario: 4.0.7 Adding nested categories with valid details
Given a logged in user with a login of "john" and a password of "secret"
When I create a category with a name of "Acme" and a parent of "Navigation"
And I create a category with a name of "Widgets" and a parent of "Navigation:Acme"
And I follow "Categories"
Then I should be on the categories listing page
And I should not see "Categories found (2)" 
And I should see "Categories found (1)" 
And I should not see "Widgets"
And I should see "Acme"

Scenario: 4.0.8 Adding nested categories with valid details
Given a logged in user with a login of "john" and a password of "secret"
When I create a category with a name of "Acme" and a parent of "Navigation"
And I create a category with a name of "Widgets" and a parent of "Navigation:Acme"
And I follow "Categories"
And I follow "Acme"
Then I should see "Widgets"

Scenario: 4.0.9 Rearranging nested categories with valid details
Given a logged in user with a login of "john" and a password of "secret"
When I create a category with a name of "Acme" and a parent of "Navigation"
And I create a category with a name of "Widgets" and a parent of "Navigation:Acme"
And I create a category with a name of "Purple" and a parent of "Navigation:Acme"
And I follow "Categories"
And I follow "Acme"
And I follow "Widgets"
And I follow "Edit Widgets"
And I select "Navigation:Acme:Purple" from "Parent"
And I press "Save"
Then I should not see "Saving category failed due to errors"
And I should see "Categories found (1)" 

Scenario: 4.1.0 I want to view a single category from the list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Categories"
And I follow "new category"
And I fill in "Cheese" for "Name"
And I fill in "Random stuff" for "Description"
And I press "Save"
Then I should not see "Saving category failed due to errors"
And I should see "Categories found (1)"
And I should see "Cheese"


Scenario: 4.1.0 I want to view a single category from the list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Categories"
And I follow "new category"
And I fill in "Cheese" for "Name"
And I fill in "Random stuff" for "Description"
And I press "Save"
And I follow "Cheese"
Then I should see "Categories for Navigation:Cheese"
And I should see "Category has (0) images and (0) products and (0) categories." 
And I should see "Images (0)"
And I should see "Products (0)"
And I should see "Edit Cheese"
And I should see "Edit Category"
And I should see "New Category"

Scenario: 4.1.1 I want to see the headings for a category
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Categories"
And I follow "new category"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
Then I should see "Categories for Navigation:Cheese"
And I should see "Category has (0) images and (0) products and (0) categories." 
And I should see "Categories (0)"
And I should see "Images (0)"
And I should see "Edit Cheese"
And I should see "New Category"
And I should see "Name"
And I should see "Description"
And I should see "Categories"
And I should see "Images"
And I should see "Picture"
