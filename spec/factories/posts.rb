# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
  	categories {[FactoryGirl.create(:category)]}
    title "Test Scholarship 1"
    body "Scholarship Body"
    publish_date "2013-04-07"
    user_id 1
    exp_date "2013-05-31"
  end

  factory :post_exp, class: Post do 
	categories {[FactoryGirl.build(:category2)]}
    title "Test Event 1"
    body "Event Body"
    publish_date "2013-04-07"
    user_id 1
    exp_date "2013-04-15"
  end
end