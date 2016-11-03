class CreateCountWants < ActiveRecord::Migration[5.0]
  def change
    create_table :count_wants do |t|
      t.integer :IDEA, foreignkey:true 
      t.integer :CATEGORY_ID
      t.string :TITLE
      t.integer :COUNT

      t.timestamps
    end
  end
end
