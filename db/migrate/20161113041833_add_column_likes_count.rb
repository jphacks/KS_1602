class AddColumnLikesCount < ActiveRecord::Migration[5.0]
  def change
    add_column :wants, :likes_count, :integer
  end
end
