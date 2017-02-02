class RenameTableLike < ActiveRecord::Migration[5.0]
  def change
    rename_table :like, :likes
  end
end
