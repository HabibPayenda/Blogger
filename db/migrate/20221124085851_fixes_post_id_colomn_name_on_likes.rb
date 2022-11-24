class FixesPostIdColomnNameOnLikes < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :likes, :post_id, :PostId
  end
end
