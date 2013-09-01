# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


FoodItem.create([
	{ 
		name: 'Pizza', food_item_id: 1  
	},
	{ 
		name: 'Pasta', food_item_id: 2  
	}, 
	{ 
		name: 'Fried Chicken', food_item_id: 3
	}
]) 