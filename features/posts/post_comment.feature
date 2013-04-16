# post_comment.feature
# KIMADA 4/10/2013

Feature: Comment on a Specific Post

  As a user
  So that I can post on a specific post
  I want to be able to post a comment

Scenario: Comment on a Specific Post

When I sign in with valid credentials

Given the following posts exist:
  | title | body | publish_date | user_id | created_at | updated_at |
  | Google Scholarship | This is a scholarship. | 13-APR-2013 | 1 | 13-APR-2013 | 13-APR-2013 |
  | Apple Internship | This is an internship. | 13-APR-2013 | 1 | 13-APR-2013 | 13-APR-2013 |

  And I am on the MWIT Posts page
  And I follow "Google Scholarship"
  And I press "Comment"
  Then I should see "Google Scholarship"
  When I fill in "Comment" with "This could be an excellent opportunity!"
  And I press "Create Comment"
  Then I am on the MWIT Posts page
  And I should see "This could be an excellent opportunity!"

  Scenario: Cancel a Comment on a Post

  Given the following posts exist:
  | title | body | publish_date | user_id | created_at | updated_at |
  | Google Scholarship | This is a scholarship. | 13-APR-2013 | 1 | 13-APR-2013 | 13-APR-2013 |
  | Apple Internship | This is an internship. | 13-APR-2013 | 1 | 13-APR-2013 | 13-APR-2013 |

  Given I am on the MWIT Posts page for "Apple Internship"
  And I press "Comment"
  Then I should see "Apple Internship"
  When I fill in "Comment" with "I am going to give this a shot."
  And I press "Cancel"
  Then I am on the MWIT Posts page
  And I should not see "I am going to give this a shot."