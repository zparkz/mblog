require 'spec_helper'

describe Comment do
  # MOD KIMADA 4/11/2013
  it "allows assignments" do 
  	should allow_mass_assignment_of(:body)
  	should allow_mass_assignment_of(:publish_date) 
  	should allow_mass_assignment_of(:post_id) 
  	should allow_mass_assignment_of(:user_id)
  end

  # MOD KIMADA 4/24/2013
  it "returns the current day for publish_date" do
  	t = Comment.curr_date
  	
  	post = Post.create(:title => "A Post", :body => "A Body", :publish_date => "24-APR-2013",
  					   :user_id => "1", :exp_date => '30-JUN-2013')

  	comment = Comment.create(:body => "Test Comment", :post_id => "1", :user_id => "1", :publish_date => t)
  	tp = Time.parse(t).strftime("%d/%m/%Y")
  	cp = comment.publish_date.strftime("%d/%m/%Y")
  	cp.should == tp
  end

  it "finds the user" do 
  	User.create!(:name => "Pat", :id => 1, :email => "pat@gmail.com", :password => 'mypassword')
  	u = Comment.find_user(1)
  	u.should be_an_instance_of User
  	u.name.should eql "Pat"
  end
end
