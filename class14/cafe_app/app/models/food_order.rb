class FoodOrder < ActiveRecord::Base
	validates :name, :presence => true	

	belongs_to :food_item 
end
