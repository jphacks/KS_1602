class RenameAllListGood < ActiveRecord::Migration[5.0]
  def change
   rename_column :list_goods, :WANT_ID, :want_id
   rename_column :list_goods, :USER_ID, :user_id
   rename_table :list_goods, :like

  end
end
