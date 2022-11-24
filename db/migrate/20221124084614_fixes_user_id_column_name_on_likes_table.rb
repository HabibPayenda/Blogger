class FixesUserIdColumnNameOnLikesTable < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :likes, :user_id, :AuthorId
  end
end
