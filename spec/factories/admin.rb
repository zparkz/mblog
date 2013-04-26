# MOD KIMADA 4/25/2013 Add Administrator User for Testing
FactoryGirl.define do  
  factory :admin_user, class: User do
    name 'Admin User'
    email 'admin@example.com'
    password 'changeme'
    password_confirmation 'changeme'
     
    #association :admin    
    # Child of :user factory, since it's in the `factory :user` block
    #factory :admin do
    #   admin true
    #end
    posts {[FactoryGirl.create(:post)]}
  end
end