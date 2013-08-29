class CreateWheelSets < ActiveRecord::Migration
  def change
    create_table :wheel_sets do |t|
      t.string :name
    end
  end
end
