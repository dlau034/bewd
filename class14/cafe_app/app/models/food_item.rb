class FoodItem < ActiveRecord::Base
	validates :name, :presence => true

	has_many :food_items
end
