class Comment < ActiveRecord::Base
  attr_accessible :body, :created_at, :post_id, :user_id
  # validates_presence_of :body, :created_at, :post_id, :user_id

  #MOD KIMADA 4/13/2013
  def self.curr_date
  	Time.now.strftime("%d/%m/%Y %H:%M")
  end

  def self.find_user(user_id) 
  	@user = User.find(user_id)
  end
end
