Feature: 6.0 Image Management
As a user
I want to manage my images

Scenario: 6.0.1 I want to view all my images in a list
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
Then I should be on the images listing page
And I should see "Images found (0)"
And I should see "New Image"

Scenario: 6.0.2 I want to hide the flash when creating a New Image
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
Then I should not see "Images found (0)"
And I should see a "Image Details" form with dom_id of "#new_image"

Scenario: 6.0.3 I want to create a New Image with a default values
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
Then I should see a "Image Details" form with dom_id of "#new_image"
And the "Name" field should contain ""
And the "Description" field should contain "this description needs to be replaced"
And I should see "Filename"

Scenario: 6.0.4 I want to create a new image and have it display the filename
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
And I attach the file with content type of "image/jpeg" at "features/support/pic.jpg" to "Filename"
And I press "Save"
Then I should be on the images listing page
And I should see "Images found (1)"
And I should see "pic.jpg"

Scenario: 6.0.5 I want to create a new image and have it display the filename
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
And I attach the file with content type of "image/jpeg" at "features/support/pic.jpg" to "Filename"
And I press "Save"
And I follow "pic.jpg"
Then I should see "Showing details for (pic.jpg)"
And I should see "Image has (0) pages and (0) sections." 
And I should see "Sections (0)"
And I should see "Pages (0)"
And I should see "Edit pic.jpg"
And I should see "Edit Image"
And I should see "New Image"

Scenario: 6.0.6 I want to view a single image from the list and have it display the name
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
And I fill in "Cheese" for "Name"
And I attach the file with content type of "image/jpeg" at "features/support/pic.jpg" to "Filename"
And I press "Save"
Then I should be on the images listing page
And I should see "Images found (1)"
And I should see "Cheese"

Scenario: 6.0.7 I want to view a single image from the list and have it display the name
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
And I fill in "Cheese" for "Name"
And I attach the file with content type of "image/jpeg" at "features/support/pic.jpg" to "Filename"
And I press "Save"
And I follow "Cheese"
Then I should see "Showing details for (Cheese)"
And I should see "Image has (0) pages and (0) sections." 
And I should see "Sections (0)"
And I should see "Pages (0)"
And I should see "Edit Cheese"
And I should see "Edit Image"
And I should see "New Image"

Scenario: 6.0.8 I want to see the headings for a image
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
And I fill in "Cheese" for "Name"
And I attach the file with content type of "image/jpeg" at "features/support/pic.jpg" to "Filename"
And I press "Save"
And I follow "Cheese"
Then I should see "Showing details for (Cheese)"
And I should see "Name"
And I should see "Description"
And I should see "Sections"
And I should see "Pages"
And I should see "Image"

Scenario: 6.0.9 I want see an edit form for an existing image
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
And I fill in "Cheese" for "Name"
And I attach the file with content type of "image/jpeg" at "features/support/pic.jpg" to "Filename"
And I press "Save"
And I follow "Cheese"
And I follow "Edit Cheese"
And I fill in "" for "Name"
And I press "Save"
Then I should be on the images listing page
And I should see "Images found (1)"
And I should see "New Image"
And I should see "pic.jpg"

Scenario: 6.0.10 I want to update an existing image
Given a logged in user with a login of "john" and a password of "secret"
When I view the images list
And I follow "New Image"
And I fill in "Cheese" for "Name"
And I attach the file with content type of "image/jpeg" at "features/support/pic.jpg" to "Filename"
And I press "Save"
And I follow "Cheese"
And I follow "Edit Cheese"
And I fill in "Yogurt" for "Name"
And I fill in "Rotted bovine extract" for "Description"
And I press "Save"
Then I should be on the images listing page
And I should see "Images found (1)"
And I should see "Yogurt"
And I should see "Rotted bovine extract"
