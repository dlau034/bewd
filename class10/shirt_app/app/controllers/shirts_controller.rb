class ShirtsController < ApplicationController 
	def index 
		@shirts = Shirt.all	
	end

	def search
		@query = params[:q]

		@shirts = Shirt.where('name LIKE ?', "#{@query}%")

		render 'shirt_search'
	end

	def show 
		@shirt = Shirt.find(params[:id])
	end
	
	def new
		@shirt = Shirt.new
	end

	def create
		@shirt = Shirt.new(shirt_params)

		if @shirt.save
			redirect_to shirts_path
		else
			flash[:alert] = @shirt.errors.full_messages.to_sentence 
			redirect_to new_shirt_path
		end	
	end

	def edit
		@shirt = Shirt.find(params[:id])
	end

	def update
		shirt = Shirt.find(params[:id])

		if shirt.update_attributes(shirt_params)
			redirect_to shirt_path(shirt)
		else 
			flash[:alert] = @shirt.errors.full_messages.to_sentence 
			redirect_to edit_shirt_path(shirt)
		end

	end

	def destroy
		shirt = Shirt.find(params[:id])

		shirt.destroy

		redirect_to shirts_path
	end

	private

	def shirt_params
		params.require(:shirt).permit(:name, :description)
	end

end
