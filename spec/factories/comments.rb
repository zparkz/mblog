# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    body "This is a comment."
    post_id 1
    user_id 1
    publish_date "11-APR-2013"
  end
end
