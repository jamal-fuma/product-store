Feature: 2.0 Role Managment
As an user
I want to manage user roles
So I can add users to groups and restrict operations to suitable user groups

Scenario: 2.0.1 I want to view all my roles in a list
Given a logged in admin with a login of "john" and a password of "secret"
When I follow "Roles"
Then I should be on the roles listing page
And I should see "Roles found (3)"
And I should see "New Role"

Scenario: 2.0.2 I want to hide the flash when creating a new role
Given a logged in admin with a login of "john" and a password of "secret"
When I follow "Roles"
And I follow "New Role"
Then I should not see "Roles found (3)"
And I should be on the roles entry page
And I should see "Creating a new role"
And I should see a "Role Details" form with dom_id of "#new_role"

Scenario: 2.0.3 I want to create a new role with a default values
Given a logged in admin with a login of "john" and a password of "secret"
When I follow "Roles"
And I follow "New Role"
Then I should see a "Role Details" form with dom_id of "#new_role"
And the "Name" field should contain "Empty"
And the "Description" field should contain "This description needs to be replaced"

Scenario: 2.0.4 I want to create a new role called Cheese
Given a logged in admin with a login of "john" and a password of "secret"
When I follow "Roles"
And I follow "New Role"
And I fill in "Cheese" for "Name"
And I press "Save"
Then I should be on the roles listing page
And I should see "Roles found (4)"
And I should see "Cheese"

Scenario: 2.0.5 I want to view a single role from the list
Given a logged in admin with a login of "john" and a password of "secret"
When I follow "Roles"
And I follow "New Role"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
Then I should see "Showing details for (Cheese)"
And I should see "Role has (0) users." 
And I should see "Users (0)"
And I should see "Edit Cheese"
And I should see "Edit Role"
And I should see "New Role"

Scenario: 2.0.6 I want to see the headings for a role
Given a logged in admin with a login of "john" and a password of "secret"
When I follow "Roles"
And I follow "New Role"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
Then I should see "Showing details for (Cheese)"
And I should see "Role has (0) users." 
And I should see "Users (0)"
And I should see "Name"
And I should see "Description"
And I should see "Edit Cheese"

Scenario: 2.0.7 I want see an edit form for an existing role
Given a logged in admin with a login of "john" and a password of "secret"
When I follow "Roles"
And I follow "New Role"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
And I follow "Edit Cheese"
Then I should see "Showing details for (Cheese)"
And the "Name" field should contain "Cheese"

Scenario: 2.0.8 I want to see update an existing role
Given a logged in admin with a login of "john" and a password of "secret"
When I follow "Roles"
And I follow "New Role"
And I fill in "Cheese" for "Name"
And I press "Save"
And I follow "Cheese"
And I follow "Edit Cheese"
And I fill in "Milk" for "Name"
And I fill in "fresh bovine lactation" for "Description"
And I press "Save"
Then I should be on the roles listing page
And I should see "Roles found (4)"
And I should see "Milk"
And I should see "fresh bovine lactation" 
And I should not see "Cheese"

#When I create a role with a name of "SuperUser" and a description of "God like powers"
#Then I should not see "prohibited this role from being saved"
#Then I should be on the roles listing page
#And I should have a role with a name of "SuperUser" and a description of "God like powers"
#When I follow "SuperUser"
#And I follow "Edit"
#Then I should see "Editing Role"
#When I add a description of "it's propper fucked" to the role
#And I press "Save"
#Then I should not see "prohibited this role from being saved"
#Then I should be on the roles listing page
#And I should have a role with a name of "SuperUser" and a description of "it's propper fucked"
#When I follow "SuperUser"
#Then I should see "it's propper fucked"
#When I follow "Back"
#Then I should be on the roles listing page
#
#Scenario: 2.0.2 Creating a new role with a missing name and valid description
#Given a logged in admin with a login of "john" and a password of "secret"
#And I follow "Roles"
#And I follow "new role"
#And I should be on the roles entry page
#When I create a role with a name of "" and a description of "God like powers"
#Then I should see "prohibited this role from being saved"
#And I should see "Roles need a name"
#When I add a name of "foo bar" to the role
#And I press "Save"
#Then I should not see "prohibited this role from being saved"
#And I should not see "Roles need a name"
#Then I should be on the roles listing page
#And I should have a role with a name of "foo bar" and a description of "God like powers"
#When I follow "foo bar"
#And I follow "Edit"
#Then I should see "Editing Role"
#When I add a description of "it's propper fucked" to the role
#And I press "Save"
#Then I should not see "prohibited this role from being saved"
#Then I should be on the roles listing page
#And I should have a role with a name of "foo bar" and a description of "it's propper fucked"
#When I follow "foo bar"
#Then I should see "it's propper fucked"
#When I follow "Back"
#Then I should be on the roles listing page
#
#Scenario: 2.0.3 Creating a new role with a valid name and missing description
#Given a logged in admin with a login of "john" and a password of "secret"
#And I follow "Roles"
#And I follow "new role"
#And I should be on the roles entry page
#When I create a role with a name of "SuperUser" and a description of ""
#Then I should see "prohibited this role from being saved"
#And I should see "Roles need a description"
#When I add a description of "God like powers" to the role
#And I press "Save"
#Then I should not see "prohibited this role from being saved"
#And I should not see "Roles need a description"
#Then I should be on the roles listing page
#And I should have a role with a name of "SuperUser" and a description of "God like powers"
#When I follow "SuperUser"
#And I follow "Edit"
#Then I should see "Editing Role"
#When I add a description of "it's propper fucked" to the role
#And I press "Save"
#Then I should not see "prohibited this role from being saved"
#Then I should be on the roles listing page
#And I should have a role with a name of "SuperUser" and a description of "it's propper fucked"
#When I follow "SuperUser"
#Then I should see "it's propper fucked"
#When I follow "Back"
#Then I should be on the roles listing page
#
#Scenario: 2.0.4 Creating a new role with a missing name and missing description
#Given a logged in admin with a login of "john" and a password of "secret"
#And I follow "Roles"
#And I follow "new role"
#And I should be on the roles entry page
#When I create a role with a name of "" and a description of ""
#Then I should see "prohibited this role from being saved"
#And I should see "Roles need a name"
#And I should see "Roles need a description"
#When I add a description of "God like powers" to the role
#And I press "Save"
#Then I should see "prohibited this role from being saved"
#And I should see "Roles need a name"
#And I should not see "Roles need a description"
#When I add a name of "SuperUser" to the role
#And I press "Save"
#Then I should not see "prohibited this role from being saved"
#And I should not see "Roles need a name"
#And I should not see "Roles need a description"
#Then I should be on the roles listing page
#And I should have a role with a name of "SuperUser" and a description of "God like powers"
#When I follow "SuperUser"
#And I follow "Edit"
#Then I should see "Editing Role"
#When I add a description of "it's propper fucked" to the role
#And I press "Save"
#Then I should not see "prohibited this role from being saved"
#Then I should be on the roles listing page
#And I should have a role with a name of "SuperUser" and a description of "it's propper fucked"
#When I follow "SuperUser"
#Then I should see "it's propper fucked"
#When I follow "Back"
#Then I should be on the roles listing page
