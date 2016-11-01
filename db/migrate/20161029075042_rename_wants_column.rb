class RenameWantsColumn < ActiveRecord::Migration[5.0]
  def change
  
  rename_column :wants, :WEFL, :LATITUDE
  rename_column :wants, :MERIDIAN, :LONGITUDE

  end
end
