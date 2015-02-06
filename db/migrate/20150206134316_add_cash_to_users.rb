class AddCashToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cash, :integer, default: 100000000
  end
end
