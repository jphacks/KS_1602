class RenameColumnCategoryIdToWants < ActiveRecord::Migration[5.0]
  def change
    rename_column :wants, :CATEGORY_ID, :category_id
  end
end
