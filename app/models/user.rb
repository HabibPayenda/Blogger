class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :confirmable
  
  has_many :posts, foreign_key: 'AuthorId'
  has_many :comments, foreign_key: 'AuthorId'
  has_many :likes, foreign_key: 'AuthorId'

  # validates :Name, presence: true
  # validates :post_counter, comparison: { greater_than_or_equal_to: 0 }

  def return_recent_posts
    Post.order(created_at: :desc).limit(3)
  end
end
