class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, foreign_key: 'PostId'
  has_many :likes, foreign_key: 'PostId'

  after_save :update_post_counter

  def return_recent_comments
    comments.order(updated_at: :desc).includes(user).limit(5)
  end

  def update_post_counter
    user.increment!(:posts_counter)
  end
end
