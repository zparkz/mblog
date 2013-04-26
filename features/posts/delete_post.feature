# delete_post.feature
# KIMADA 3/31/2013, Revised 4/25/2013 for new design

Feature: Delete a Specific Post

  As a user
  So that I can delete a specific post
  I want to be able to delete one post

Scenario: Delete Specific Post

Given the following users exist:
  | email | password | created_at | updated_at | name |
  | user@example.com | changeme | 15-APR-2013 | 15-APR-2013 | Testy McUserton |

Given the following posts exist:
  | title | body | publish_date | user_id | exp_date | 
  | Apple | This is an internship. | 25-APR-2013 | 1 | 01-JUN-2013 |
  | Google | This is a scholarship. | 01-APR-2013 | 1 | 24-APR-2013 | 
  | Facebook | An event. | 20-APR-2013 | 1 | 15-JUL-2013 |

  And I am on the MWIT Posts page
  When I follow "Login"
  When I fill in "Email" with "user@example.com"
  When I fill in "Password" with "changeme"
  And I press "Sign in"
  And I am on the MWIT Posts page
  And I follow "Destroy" for "Apple"
  Then I should not see "This is an internship."
  And I should see "Facebook"
  And I am on the MWIT Posts page