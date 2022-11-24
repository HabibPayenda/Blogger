class Like < ApplicationRecord
  belongs_to :User, foreign_key: 'AuthorId'
  belongs_to :Post, foreign_key: 'PostId'
end
