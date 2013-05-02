# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name "Scholarship"
  end

  factory :category2, class: Category do
  	name "Event"
  end
end