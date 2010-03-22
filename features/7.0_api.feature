Feature: 1.0 Section Classes
As a designer
I want to assign css classes to structural containers on a page

Scenario: 1.0.1 I want to view all css classes in a list
Given a section called "foo" without a css class
When I_Follow "add css class"
Then I should_see a list of css classes"
And I should_see "dave_css_class"
And I should_see "Css classes found (15)"
And I should_see "Add new css class"

Scenario: 1.0.2 I want to choose a css class from a list
Given a section called "foo" without a css class
When I_Follow "add css class"
And I_Choose "dave_css_class"
Then I should_see "added css class 'dave_css_class' to section 'foo'"

Scenario: 1.0.3 I want to see the css class of a section
Given a section called "foo" with a css class of "dave_css_class"
When I_Follow the "show css class" link
Then I should_see "section 'foo' has a css class of 'dave_css_class'"







