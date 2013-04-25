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

  # MOD KIMADA 4/25/2013 Add Admin User for Testing
  factory :admin_user, class: User do
    name 'Admin User'
    email 'admin@example.com'
    password 'adminpass'
    password_confirmation 'adminpass'
        
    # Child of :user factory, since it's in the `factory :user` block
    factory :admin do
       admin true
    end
  end
end
