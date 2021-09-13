class Topic < ApplicationRecord
    has_many :posts, through: :post_topics
end
