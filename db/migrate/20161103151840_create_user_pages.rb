class CreateUserPages < ActiveRecord::Migration[5.0]
  def change
    create_table :user_pages do |t|

      t.timestamps
    end
  end
end
