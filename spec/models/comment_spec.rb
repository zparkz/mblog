require 'spec_helper'

describe Comment do
  # MOD KIMADA 4/11/2013
  it "allows assignments" do 
  	should allow_mass_assignment_of(:body)
  	should allow_mass_assignment_of(:created_at) 
  	should allow_mass_assignment_of(:post_id) 
  	should allow_mass_assignment_of(:user_id)
  end
end
