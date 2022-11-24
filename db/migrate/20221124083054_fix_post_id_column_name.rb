class FixPostIdColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :comments, :post_id, :PostId
  end
end
