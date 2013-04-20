# post_comment.feature
# KIMADA 4/10/2013

Feature: Comment on a Specific Post

  As a user
  So that I can post on a specific post
  I want to be able to post a comment

Scenario: Comment on a Specific Post

Given the following users exist:
  | email | password | created_at | updated_at | name |
  | user@example.com | changeme | 15-APR-2013 | 15-APR-2013 | Testy McUserton |

Given the following posts exist:
  | title | body | publish_date | user_id | created_at | updated_at |
  | Google Scholarship | This is a scholarship. | 13-APR-2013 | 1 | 13-APR-2013 | 13-APR-2013 |
  | Apple Internship | This is an internship. | 13-APR-2013 | 1 | 13-APR-2013 | 13-APR-2013 |

  And I am on the MWIT Posts page
  When I follow "Login"
  When I fill in "Email" with "user@example.com"
  When I fill in "Password" with "changeme"
  And I press "Sign in"
  And I follow "Google Scholarship"
  When I follow "Comment"
  Then I should see "Google Scholarship"
  When I fill in "Body" with "This could be an excellent opportunity!"
  When I press "Create Comment"
  Then I am on the MWIT Posts page for "Google Scholarship"
  And I should see "This could be an excellent opportunity!"

  Scenario: Cancel a Comment on a Post

  Given the following users exist:
  | email | password | created_at | updated_at | name |
  | user@example.com | changeme | 15-APR-2013 | 15-APR-2013 | Testy McUserton |

  Given the following posts exist:
  | title | body | publish_date | user_id | created_at | updated_at |
  | Google Scholarship | This is a scholarship. | 13-APR-2013 | 1 | 13-APR-2013 | 13-APR-2013 |
  | Apple Internship | This is an internship. | 13-APR-2013 | 1 | 13-APR-2013 | 13-APR-2013 |

  And I am on the MWIT Posts page
  When I follow "Login"
  When I fill in "Email" with "user@example.com"
  When I fill in "Password" with "changeme"
  And I press "Sign in"
  And I follow "Apple Internship"
  When I follow "Comment"
  Then I should see "Apple Internship"
  When I fill in "Body" with "I am going to give this a shot."
  And I follow "Cancel"
  Then I am on the MWIT Posts page for "Apple Internship"
  And I should not see "I am going to give this a shot."