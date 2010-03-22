Feature: 1.0 Bug Reporting
As a user
I want to comment on the progress of bugs

Scenario: 1.0.1 I want to view all my bugs in a list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
Then I should be on the bugs listing page
And I should see "Bugs found (0)"

Scenario: 1.0.2 I want to hide the flash when reporting a new bug
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
And I follow "New Bug"
Then I should not see "Bugs found (0)"
And I should see a "Bug Details" form with dom_id of "#new_bug"

Scenario: 1.0.3 I want to create a new bug with a default values
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
And I follow "New Bug"
Then I should be on the bugs entry page
And I should see a "Bug Details" form with dom_id of "#new_bug"
And the "Title" field should contain ""
And the "Description" field should contain ""
And I should see "New Fault"

Scenario: 1.0.4 I want to fail to report a bug called This
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
And I follow "New Bug"
And I fill in "this" for "Title"
And I fill in "this is late, buggy and overpriced" for "Description"
And I press "Save"
Then I should be on the bugs listing page
And I should not see "Bugs found (1)"
And I should not see "This is broken"
And I should see "Title is too short (minimum is 10 characters)"

Scenario: 1.0.5 I want to view a single bug from the list
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
And I follow "New Bug"
And I fill in "this is broken" for "Title"
And I fill in "this is late, buggy and overpriced" for "Description"
And I press "Save"
And I follow "This is broken"
Then I should see /Showing details for .New Fault. : "this is broken"/
And I should see "Bug has (0) comments." 
And I should see "Comments (0)"
And I should see "Edit Bug"
And I should see "Edit This is broken"
And I should see "New Bug"

Scenario: 1.0.6 I want to see the headings for a bug
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
And I follow "New Bug"
And I fill in "this is broken" for "Title"
And I fill in "this is late, buggy and overpriced" for "Description"
And I press "Save"
And I follow "This is broken"
Then I should see /Showing details for .New Fault. : "this is broken"/
And I should see "Name"
And I should see "Title"
And I should see "Reported by"
And I should see "Comments"
And I should see "Status"

Scenario: 1.0.7 I want see an edit form for an existing bug
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
And I follow "New Bug"
And I fill in "Sorting is Broken" for "Title"
And I fill in "this is late, buggy and overpriced" for "Description"
And I press "Save"
And I follow "Sorting is broken"
And I follow "Edit Sorting is Broken"
Then I should see /Editing details for .New Fault. : "Sorting is Broken"/
And the "Title" field should contain "Sorting is Broken"
And I should see "New Fault"

Scenario: 1.0.8 I want to change the status of an existing bug
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
And I follow "New Bug"
And I fill in "Sorting is Broken" for "Title"
And I fill in "this is late, buggy and overpriced" for "Description"
And I press "Save"
And I follow "Sorting is Broken"
And I follow "Edit Sorting is broken"
And I select "Resolved Fault" from "Status"
And I press "Save"
Then I should have a bug with a title of "Sorting is Broken" and a status of "Resolved Fault"

Scenario: 1.0.9 I want to change the status of an existing bug
Given a logged in user with a login of "john" and a password of "secret"
When I follow "Bugs"
And I follow "New Bug"
And I fill in "Sorting is Broken" for "Title"
And I fill in "this is late, buggy and overpriced" for "Description"
And I select "Resolved Fault" from "Status"
And I press "Save"
And I follow "Sorting is Broken"
Then I should see /Showing details for .Resolved Fault. : "Sorting is Broken"/
And I should see "this is late, buggy and overpriced"

