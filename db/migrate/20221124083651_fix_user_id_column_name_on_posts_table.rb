class FixUserIdColumnNameOnPostsTable < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :posts, :user_id, :AuthorId
  end
end
