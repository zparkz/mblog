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

class Post < ActiveRecord::Base
  attr_accessible :body, :publish_date, :title, :category_ids, :exp_date
  validates_presence_of :title, :body, :publish_date, :user_id, :exp_date, :category_ids
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :comments # MOD KIMADA 4/11/2013
  scope :published, lambda {where(['publish_date <= ?', Date.today])}
  scope :by_user_id, lambda {|uid| where(:user_id => uid)}
  scope :by_category_id, lambda{|cid| joins(:categories).where(['categories.id =?', cid])}
  scope :expired, lambda {where(['exp_date < ?', Date.today])} # MOD KIMADA 
end
