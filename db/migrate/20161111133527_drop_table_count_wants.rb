class DropTableCountWants < ActiveRecord::Migration[5.0]
  def change
    drop_table :count_wants
  end
end
