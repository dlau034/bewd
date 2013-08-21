class MoviesController < ApplicationController

	def index
		@movie = Movie.find(2)
	end
	
end
