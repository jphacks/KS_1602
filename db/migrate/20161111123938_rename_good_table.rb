class RenameGoodTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :categories, :LIKE
  end
end
