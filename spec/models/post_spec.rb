# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  body         :text
#  publish_date :date
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Post do
  # MOD KIMADA 4/11/2013
  it "allows assignments" do 
  	should allow_mass_assignment_of(:body)
  	should allow_mass_assignment_of(:publish_date) 
  	should allow_mass_assignment_of(:title) 
  	should allow_mass_assignment_of(:category_ids)
  end

  it "should validate presence of title, body, publish_date, user_id" do
  	should validate_presence_of :title
    should validate_presence_of :body
    should validate_presence_of :publish_date
    should validate_presence_of :user_id
  end
end
