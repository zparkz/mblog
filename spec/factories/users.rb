# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end

  # MOD KIMADA 4/11/2013
  factory :admin do 
  	name 'Administrative User'
  	email 'admin@test.edu'
  	password 'changeme'
  	password_confirmation 'changeme'
  end

end
