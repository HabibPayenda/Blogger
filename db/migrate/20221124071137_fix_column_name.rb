class FixColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :comments, :user_id, :AuthorId
  end
end
