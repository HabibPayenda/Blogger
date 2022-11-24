class Post < ApplicationRecord
  belongs_to :User
  has_many :Comments, foreign_key: 'PostId'
  has_many :Likes, foreign_key: 'PostId'
end
