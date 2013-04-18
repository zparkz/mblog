# user_logout.feature
# KIMADA 4/11/2013

Feature: Logout as a User

  As a user
  So that I can logout
  I want to be able to logout

Scenario: User logs out

  Given the following users exist:
  | email | password | created_at | updated_at | name |
  | user@example.com | changeme | 15-APR-2013 | 15-APR-2013 | Testy McUserton |

  Given I am on the MWIT Posts page
  And I follow "Login"
  And I fill in "Email" with "user@example.com"
  And I fill in "Password" with "changeme"
  And I press "Sign in"
  When I sign out
  Then I should see "Signed out successfully."