class AddImageUrlToShirts < ActiveRecord::Migration
  def change
  	add_column :shirts, :image_url, :string   	
  end

 #  def up
	# add_column :shirts, :image_url, :string   	
 #  end

 #  def down	
 #  	remove_column :shirts, :image_url
 #  end

end

