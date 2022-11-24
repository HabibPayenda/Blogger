class User < ApplicationRecord
  has_many :Posts, foreign_key: 'AuthorId'
  has_many :Comments, foreign_key: 'AuthorId'
  has_many :Likes, foreign_key: 'AuthorId'
end
