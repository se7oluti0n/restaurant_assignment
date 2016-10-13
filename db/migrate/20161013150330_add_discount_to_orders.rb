class AddDiscountToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :discount, :decimal, :default => 0 
  end
end
