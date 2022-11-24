class AddDetailsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :comment_counter, :integer
    add_column :posts, :like_counter, :integer
  end
end
