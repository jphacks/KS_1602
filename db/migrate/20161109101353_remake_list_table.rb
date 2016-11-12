class RemakeListTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :list_goods, :COUNT
    remove_column :list_goods, :NAME
  end
end
