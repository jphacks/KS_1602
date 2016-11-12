class RenameAllColumnToWants < ActiveRecord::Migration[5.0]
  def change
    rename_column :wants, :TITLE, :title
    rename_column :wants, :COMMENT, :comment
    rename_column :wants, :LATITUDE, :latitude
    rename_column :wants, :LONGITUDE, :longitude
  end
end
