class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :food_item_id

      t.timestamps
    end
    add_index :food_items, :food_item_id
  end
end
