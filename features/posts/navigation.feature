Feature: Navigation bar

As a user
  So that I can go to the pages I want
  I want to move around the site

Scenario: Navigation bar has the correct content and functionality

Given I am on the home page
Then I should see "women in technology"
Then I should see "mills college"
Then I should see the links for Home, Login, Sign up, About us and Contact us
When I follow the home page link
Then I am on the home page

Given that I am on the home page and I am not logged in
When I click on the Login Link
Then I am on the Login page

Given that I am on the Login page
When I click on "women in technology"
Then I am on the home page

Given that I am on the home page
When I follow the  mills college link
Then A new tab should open showing the mills college website.

Given that I am on the home page
When I click the link for Sign up
Then I am on the Sign up page

Given that I am on the home page
When I click the link for About us
Then I am on the About us page

Given that I am on the home page
When I click the link Contact us
Then I am on the Contact us page
