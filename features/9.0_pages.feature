Feature: 9.0 Page Managements
As a user
I want to manage my pages 
So I can keep group products by page

Scenario: 9.0.1 I want to view all my pages in a list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Pages"
Then I should be on the pages listing page
And I should see "Pages found (0)"

Scenario: 9.0.2 I want to hide the flash when creating a new page
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Pages"
And I follow "new page"
Then I should not see "Pages found (0)"
And I should see a "Page Details" form with dom_id of "#new_page"

Scenario: 9.0.3 I want to create a new page with a default values
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Pages"
And I follow "new page"
Then I should see a "Page Details" form with dom_id of "#new_page"
And the "Name" field should contain ""
And the "Description" field should contain ""
And "Navigation" should be selected for "Parent"

Scenario: 9.0.4 I want to create a new page with assigned values
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Pages"
And I should see a "red" foreground on a "green" background in "upper left corner"
And I follow "new page"
And I fill in "Acme" for "Name"
And I fill in "Any old tosh" for "Description"
And I select "Navigation" from "Parent"
And I press "Save"
Then I should be on the pages listing page
And I should see "Pages found (1)" 
And I should have a page with a name of "Acme"

Scenario: 9.0.5 Submit invalid page form
Given a logged in user with a login of "john" and a password of "secret"
When I follow "new page"
And I fill in "A" for "Name"
And I select "Navigation" from "Parent"
And I press "Save"
Then I should see "Saving page failed due to errors"
And I should not see "Pages found (0)" 
And I should be on the pages listing page
And I should have a page with a name of "Acme"

Scenario: 9.0.6 Adding multiple page with valid details
Given a logged in user with a login of "john" and a password of "secret"
When I create a page with a name of "Acme" and a parent of "Navigation"
And I create a page with a name of "Widgets" and a parent of "Navigation"
And I follow "Pages"
Then I should be on the pages listing page
And I should not see "Pages found (0)" 
And I should see "Pages found (2)" 
And I should see "Widgets"
And I should see "Acme"

Scenario: 9.0.7 Adding nested pages with valid details
Given a logged in user with a login of "john" and a password of "secret"
When I create a page with a name of "Acme" and a parent of "Navigation"
And I create a page with a name of "Widgets" and a parent of "Navigation:Acme"
And I follow "Pages"
Then I should be on the pages listing page
And I should not see "Pages found (2)" 
And I should see "Pages found (1)" 
And I should not see "Widgets"
And I should see "Acme"

Scenario: 9.0.8 Adding nested pages with valid details
Given a logged in user with a login of "john" and a password of "secret"
When I create a page with a name of "Acme" and a parent of "Navigation"
And I create a page with a name of "Widgets" and a parent of "Navigation:Acme"
And I follow "Pages"
And I follow "Acme"
Then I should see "Widgets"

Scenario: 9.0.9 Rearranging nested pages with valid details
Given a logged in user with a login of "john" and a password of "secret"
When I create a page with a name of "Acme" and a parent of "Navigation"
And I create a page with a name of "Widgets" and a parent of "Navigation:Acme"
And I create a page with a name of "Purple" and a parent of "Navigation:Acme"
And I follow "Pages"
And I follow "Acme"
And I follow "Widgets"
And I follow "Edit Widgets"
And I select "Navigation:Acme:Purple" from "Parent"
And I press "Save"
Then I should not see "Saving page failed due to errors"
And I should see "Pages found (1)" 

Scenario: 9.1.0 I want to view a single page from the list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Pages"
And I follow "new page"
And I fill in "Cheese" for "Name"
And I fill in "Random stuff" for "Description"
And I press "Save"
Then I should not see "Saving page failed due to errors"
And I should see "Pages found (1)"
And I should see "Cheese"


Scenario: 9.1.0 I want to view a single page from the list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Pages"
And I follow "new page"
And I fill in "Cheese" for "Name"
And I fill in "Random stuff" for "Description"
And I press "Save"
And I follow "Cheese"
Then I should see "Pages for Navigation:Cheese"
And I should see "Page has (0) images and (0) products and (0) pages." 
And I should see "Images (0)"
And I should see "Products (0)"
And I should see "Edit Cheese"
And I should see "Edit Page"
And I should see "New Page"

Scenario: 9.1.1 I want to see the headings for a page
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Pages"
And I follow "new page"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
Then I should see "Pages for Navigation:Cheese"
And I should see "Page has (0) images and (0) products and (0) pages." 
And I should see "Pages (0)"
And I should see "Images (0)"
And I should see "Edit Cheese"
And I should see "New Page"
And I should see "Name"
And I should see "Description"
And I should see "Pages"
And I should see "Images"
And I should see "Picture"
