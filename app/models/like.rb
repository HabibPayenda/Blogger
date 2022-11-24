class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'AuthorId'
  belongs_to :post, foreign_key: 'PostId'

  after_save :update_like_counter

  def update_like_counter
    post.increment!(:like_counter)
  end
end
