class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.integer :CATEDORY_ID
      t.string :NAME

      t.timestamps
    end
  end
end
