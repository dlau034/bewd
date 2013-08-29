class BicycleOrdersController < ApplicationController
	def new
		@bicycle = BicycleOrder.new
	end

	def edit
		@bicycle_order = BicycleOrder.find(params[:id])
	end

	def create		
		bicycle_order = BicycleOrder.new(bicycle_order_params)

		if bicycle_order.save
			redirect_to edit_bicycle_order_path(bicycle_order)
		else
			redirect_to new_bicycle_order_path
		end
	end

	def bicycle_order_params
		params.require('bicycle_order').permit('name','wheels')
	end


end

