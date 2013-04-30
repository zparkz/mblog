# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
  	categories {[FactoryGirl.create(:category)]}
    title "Test Scholarship 1"
    body "Scholarship Body"
    publish_date "2013-04-07"
    user_id 1
    exp_date "31-MAY-2013"
  end
end