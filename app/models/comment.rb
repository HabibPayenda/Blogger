class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'AuthorId'
  belongs_to :post, foreign_key: 'PostId'

  after_save :update_comment_counter

  def update_comment_counter
    post.increment!(:comment_counter)
  end
end
