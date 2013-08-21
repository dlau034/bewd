class AddImageUrlToShirts < ActiveRecord::Migration
  def change
    add_column :shirts, :image_url, :string
  end
end
