class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :year_released
      t.string :user_id  

      t.timestamps
    end
  end
end
