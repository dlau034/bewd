class ChangeWheelsIdColumnInBicycleOrders < ActiveRecord::Migration
  def change
    rename_column :bicycle_orders, :wheels_id, :wheel_set_id
  end
end
