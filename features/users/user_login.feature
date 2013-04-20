# user_login.feature
# KIMADA 4/11/2013

Feature: Login as a User

  As a user
  So that I can login
  I want to be able to login

Scenario: User logs on successfully

  Given the following users exist:
  | email | password | created_at | updated_at | name |
  | user@example.com | changeme | 15-APR-2013 | 15-APR-2013 | Testy McUserton |

  Given I am on the MWIT Posts page
  And I follow "Login"
  And I fill in "Email" with "user@example.com"
  And I fill in "Password" with "changeme"
  And I press "Sign in"
  Then I should see "Signed in successfully."

  Scenario: User does not log on successfully

  Given the following users exist:
  | email | password | created_at | updated_at | name |
  | user@example.com | changeme | 15-APR-2013 | 15-APR-2013 | Testy McUserton |

  Given I am on the MWIT Posts page
  And I follow "Login"
  And I fill in "Email" with "user@example.com"
  And I fill in "Password" with "thisisapassword"
  And I press "Sign in"
  And I should see "Invalid email or password."