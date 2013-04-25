class Comment < ActiveRecord::Base
  attr_accessible :body, :created_at, :post_id, :user_id, :publish_date
  validates_presence_of :body, :post_id, :user_id, :publish_date

  #MOD KIMADA 4/13/2013
  belongs_to :post

  def self.curr_date
  	Time.now.strftime("%d/%m/%Y %H:%M")
  end

  def self.find_user(user_id) 
  	@user = User.find(user_id)
  end
end
