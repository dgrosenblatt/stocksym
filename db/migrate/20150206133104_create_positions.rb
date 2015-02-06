class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :user_id, null: false
      t.integer :stock_id, null: false
      t.integer :quantity, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
