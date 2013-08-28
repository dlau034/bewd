class CreateBicycleOrders < ActiveRecord::Migration
  def change
    create_table :bicycle_orders do |t|
      t.string :name
      t.integer :wheels_id
    end
    add_index :bicycle_orders, :wheels_id
  end
end
