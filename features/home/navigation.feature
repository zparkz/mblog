
# navigation.feature
# AROSS 5/2013


# AROSS 5/2013
Feature: Navigation bar from home page

	As a user
	So that I can go to the pages I want
	I want to move around the site

Scenario: Navigation bar has the correct content

Given I am on the home page
Then I should see "Women in Technology"
Then I should see "Mills College"
Then I should see "Home"
Then I should see "Login"
Then I should see "Sign up"
Then I should see "Mills College Connections"
Then I should see "MCS Activities"
When I follow "Home"
Then I am on the home page

Scenario: Login link works

Given I am on the home page
And I am not logged in
When I follow "Login"
Then I am on the sign in page

Scenario: Women in Technology link works

Given I am on the sign in page
When I follow "Women in Technology"
Then I am on the home page

Scenario: Sign up link works

Given I am on the home page
And I follow "Sign up"
Then I am on the sign up page