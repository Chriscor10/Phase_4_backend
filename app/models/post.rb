class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :topics, through: :postTopic
end
