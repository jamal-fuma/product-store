Feature: 3.0 Supplier Reporting
As a user
I want to manage my suppliers 
So I can keep track of what I buy from each supplier
 A supplier supplies one or more suppliers.
    A supplier has meta-attributes such as a name, picture,position and description
    A supplier has a bank account, and one or more contacts.
    A supplier has multiple threads of conversation with one or more comments per thread.
    A supplier thread is sortable by date and by contact name.

Scenario: 3.0.1 I want to view all my suppliers in a list
Given a logged in user with a login of "john" and a password of "secret"
And I follow "Suppliers"
Then I should be on the suppliers listing page
And I should see "Suppliers found (0)"

Scenario: 3.0.2 I want to hide the flash when creating a new supplier
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Suppliers"
And I follow "new supplier"
Then I should not see "Suppliers found (0)"
And I should see a "Supplier Details" form with dom_id of "#new_supplier"

Scenario: 3.0.3 I want to create a new supplier with a default values
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Suppliers"
And I follow "new supplier"
Then I should see a "Supplier Details" form with dom_id of "#new_supplier"
And the "Name" field should contain ""
And the "Description" field should contain ""
And the "Sort code" field should contain ""
And the "Bank name" field should contain ""
And the "Dialing code" field should contain ""
And the "Telephone" field should contain ""
And the "Email" field should contain ""
And the "Account" field should contain ""

Scenario: 3.0.4 I want to create a new supplier called cheese
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Suppliers"
And I follow "new supplier"
And I fill in "Cheese" for "Name"
And I fill in "A supplier of really poor quality fittings" for "Description"
And I fill in "0011223434" for "Account"
And I fill in "305515" for "Sort code"
And I fill in "Barclays" for "Bank name"
And I fill in "0207" for "Dialing code"
And I fill in "2445522" for "Telephone"
And I fill in "cheese@foo.com" for "Email"
And I press "Save"
Then I should be on the suppliers listing page
And I should see "Suppliers found (1)"
And I should see "Cheese"

Scenario: 3.0.5 I want to view a single supplier from the list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Suppliers"
And I follow "new supplier"
And I fill in "Cheese" for "Name"
And I fill in "A supplier of really poor quality fittings" for "Description"
And I fill in "0011223434" for "Account"
And I fill in "305515" for "Sort code"
And I fill in "Barclays" for "Bank name"
And I fill in "0207" for "Dialing code"
And I fill in "2445522" for "Telephone"
And I fill in "cheese@foo.com" for "Email"
And I press "Save"
And I follow "Cheese"
Then I should see "Showing details for (Cheese)"
And I should see "Supplier has (0) products." 
And I should see "Products (0)"
And I should see "Edit Cheese"
And I should see "Edit Supplier"
And I should see "New Supplier"

Scenario: 3.0.6 I want to see the headings for a supplier
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Suppliers"
And I follow "new supplier"
And I fill in "Cheese" for "Name"
And I fill in "A supplier of really poor quality fittings" for "Description"
And I fill in "0011223434" for "Account"
And I fill in "305515" for "Sort code"
And I fill in "Barclays" for "Bank name"
And I fill in "0207" for "Dialing code"
And I fill in "2445522" for "Telephone"
And I fill in "cheese@foo.com" for "Email"
And I press "Save"
And I follow "Cheese"
Then I should see "Showing details for (Cheese)"
And I should see "Supplier has (0) products." 
And I should see "Products (0)"
And I should see "Edit Cheese"
And I should see "Edit Supplier"
And I should see "New Supplier"
And I should see "Name"
And I should see "Description"
And I should see "Acc/No"
And I should see "Bank Name"
And I should see "Telephone"
And I should see "Email"
And I should see "A supplier of really poor quality fittings" 



Scenario: 3.0.7 I want see an edit form for an existing supplier
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Suppliers"
And I follow "new supplier"
And I fill in "Cheese" for "Name"
And I fill in "A supplier of really poor quality fittings" for "Description"
And I fill in "0011223434" for "Account"
And I fill in "305515" for "Sort code"
And I fill in "Barclays" for "Bank name"
And I fill in "0207" for "Dialing code"
And I fill in "2445522" for "Telephone"
And I fill in "cheese@foo.com" for "Email"
And I press "Save"
And I follow "Cheese"
And I follow "Edit Cheese"
Then I should see "Showing details for (Cheese)"
And the "Name" field should contain "Cheese"

Scenario: 3.0.8 I want to see update an existing supplier
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Suppliers"
And I follow "new supplier"
And I fill in "Cheese" for "Name"
And I fill in "A supplier of really poor quality fittings" for "Description"
And I fill in "0011223434" for "Account"
And I fill in "305515" for "Sort code"
And I fill in "Barclays" for "Bank name"
And I fill in "0207" for "Dialing code"
And I fill in "2445522" for "Telephone"
And I fill in "cheese@foo.com" for "Email"
And I press "Save"
And I follow "Cheese"
And I follow "Edit Cheese"
And I fill in "Yogurt" for "Name"
And I fill in "Rotted bovine extract" for "Description"
And I press "Save"
Then I should be on the suppliers listing page
And I should see "Suppliers found (1)"
And I should see "Yogurt"
And I should see "Rotted bovine extract"


