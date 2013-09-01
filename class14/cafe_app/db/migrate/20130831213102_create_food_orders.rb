class CreateFoodOrders < ActiveRecord::Migration
  def change
    create_table :food_orders do |t|
      t.string :name
      t.integer :food_item_id
    end
    add_index :food_orders, :food_item_id
  end
end
