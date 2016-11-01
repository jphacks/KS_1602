class CreateWants < ActiveRecord::Migration[5.0]
  def change
    create_table :wants do |t|
      
      t.integer :USER_ID, foreignkey:true
      t.string :TITLE
      t.integer :CATEGORY_ID
      t.text :COMMENT
      t.float :WEFL
      t.float :MERIDIAN
      t.integer :GOOD
      #add_foreign_key :users#, :CATEGORY_ID
      t.timestamps
    end
  end
end
