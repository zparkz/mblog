# show_expired_post.feature
# KIMADA 4/25/2013

Feature: Show Expired Posts

  As an admin user
  So that I can see expired posts
  I want to be able to see all expired posts

Scenario: Show Expired Posts

Given the following posts exist:
  | title | body | publish_date | user_id | exp_date | 
  | Apple | This is an internship. | 25-APR-2013 | 1 | 01-JUN-2013 |
  | Google | This is a scholarship. | 01-APR-2013 | 1 | 24-APR-2013 | 

  Given I am an admin and logged in
  And I am on the MWIT Posts page
  Then I should see "Apple"
  #When I follow "Login"
  #When I fill in "Email" with "admin@example.com"
  #When I fill in "Password" with "changeme"
  #And I press "Sign in"
  And I follow "Show Expired Posts"
  Then I should see "Google"
  And I should not see "Apple"