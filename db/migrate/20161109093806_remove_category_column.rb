class RemoveCategoryColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column  :categories, :CATEDORY_ID
  end
end
