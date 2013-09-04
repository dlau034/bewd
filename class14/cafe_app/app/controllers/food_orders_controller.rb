class FoodOrdersController < ApplicationController
	before_filter :authenticate_admin!, :except => [:index]

	def new
		@food_order = FoodOrder.new
	end	

	def create
		food_order = FoodOrder.new(food_order_params)

		if food_order.save
			redirect_to edit_food_order_path(food_order)
		else
			redirect_to new_food_order_path
		end		
	end

	def edit
		@food_order = FoodOrder.find(params[:id])
		@food_items = FoodItem.all
	end


	def update 
		food_order = FoodOrder.find(params[:id])

		if food_order.update(food_order_params)
			redirect_to new_food_order_path
		else
			redirect_to food_orders_path
		end			
	end

	# def show 
	# 	@food_orders = FoodOrder.all
	# end

	def index 
		@food_orders = FoodOrder.all
		@food_items = FoodItem.all
	end

	def destroy
		food_order = FoodOrder.find(params[:id])
    	food_order.destroy
    	redirect_to food_orders_path
	end

	private

	# the input of into the form for both create and update

	def food_order_params
		params.require('food_order').permit('name','food_item_id')
	end

end
