class RenameAllColumnToCategories < ActiveRecord::Migration[5.0]
  def change
    rename_column :categories, :NAME, :name       
  end
end
