class CreateListGoods < ActiveRecord::Migration[5.0]
  def change
    create_table :list_goods do |t|
      t.integer :WANT_ID
      t.integer :USER_ID
      t.string :NAME
      t.integer :COUNT

      t.timestamps
    end
  end
end
