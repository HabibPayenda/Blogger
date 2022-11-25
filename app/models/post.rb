class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'AuthorId'
  has_many :comments, foreign_key: 'PostId'
  has_many :likes, foreign_key: 'PostId'

  after_save :update_post_counter

  validates :Title, presence: true, length: { maximum: 250 }
  validates :comment_counter, numericality: { greater_than_or_equal_to: 0 }
  validates :like_counter, numericality: { greater_than_or_equal_to: 0 }

  def return_recent_comments
    comments.order(updated_at: :desc).includes(user).limit(5)
  end

  def update_post_counter
    user.increment!(:post_counter)
  end
end
