class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :phone
      t.text :address
      t.references :food_item, foreign_key: true

      t.timestamps
    end
  end
end
