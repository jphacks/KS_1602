class RenameCategories < ActiveRecord::Migration[5.0]
  def change

  rename_column :categories, :CATEDORY_ID, :CATEGORY_ID 

  end
end
