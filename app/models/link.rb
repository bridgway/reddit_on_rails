class Link < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :url, :title, :user_id
  belongs_to :user
  has_many :comments
  has_many :votes
end
