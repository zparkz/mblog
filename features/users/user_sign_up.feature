# user_sign_up.feature
# MOD KIMADA 4/11/2013

Feature: Sign Up!

  As an interested party
  So that I can be a part of a wonderful service
  I want to be able to sign up

Scenario: User signs up successfully

  Given I am on the MWIT Posts page
  And I follow "Sign up"
  Then I should see "Sign up"
  And I fill in "Name" with "Test User"
  And I fill in "Email" with "test@test.ta"
  And I fill in "user[password]" with "testpass"
  And I fill in "user[password_confirmation]" with "testpass"
  And I press "Sign up"
  Then I am on the MWIT Posts page

Scenario: User does not fill in password

 Given I am on the MWIT Posts page
  And I follow "Sign up"
  Then I should see "Sign up"
  And I fill in "Name" with "Test User"
  And I fill in "Email" with ""
  And I fill in "user[password]" with "testpass"
  And I fill in "user[password_confirmation]" with "testpass"
  And I press "Sign up"
  And I should see "Name"
  And I should see "Email"
