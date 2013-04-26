# delete_expired_post.feature
# KIMADA 4/25/2013

Feature: Delete Expired Posts

  As an admin user
  So that I can delete all expired posts
  I want to be able to delete all expired posts

Scenario: Delete All Expired Posts

Given the following posts exist:
  | title | body | publish_date | user_id | exp_date | 
  | Apple | This is an internship. | 25-APR-2013 | 1 | 01-JUN-2013 |
  | Google | This is a scholarship. | 01-APR-2013 | 1 | 15-APR-2013 | 

  Given I am an admin and logged in
  And I am on the MWIT Posts page
  Then I should see "Apple"
  And I follow "Show Expired Posts"
  Then I should see "Google"
  And I follow "Delete Expired Posts"
  Then I am on the MWIT Posts page
  And I should not see "Google"