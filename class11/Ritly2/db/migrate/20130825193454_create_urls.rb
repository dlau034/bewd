class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :link
      t.integer :hash_code
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
