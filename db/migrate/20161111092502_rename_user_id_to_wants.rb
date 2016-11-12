class RenameUserIdToWants < ActiveRecord::Migration[5.0]
  def change
    rename_column :wants, :USER_ID, :user_id
  end
end
