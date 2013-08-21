class MoviesController < ApplicationController

	def index
		@movies = Movie.all		
		@movie = Movie.new

	end

	def show 
		@movie = Movie.find(params[:id])
	end

	def search
		@query = params[:batman]
		@movies = Movie.where('title LIKE ? OR description LIKE ?', "%#{@query}%", "%#{@query}%")
    	render 'movie_search'
	end	
	
	def new
		@movie = Movie.new
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		movie = Movie.find(params[:id])

	    if movie.update_attributes(movie_params)
	      redirect_to movie_path(movie)
	    else
	      flash[:alert] = movie.errors.full_messages.to_sentence
	      redirect_to edit_movie_path(movie)
	    end		
	end

	def create
		movie = Movie.new(movie_params)

	    if movie.save
	      redirect_to movies_path
	    else
	      flash[:alert] = movie.errors.full_messages.to_sentence 
	      redirect_to new_movie_path
	    end		
	end

	def destroy
		movie = Movie.find(params[:id])
	
		movie.destroy 

		redirect_to movies_path
	end

	private

	def movie_params
		params.require(:movie).permit(:title, :description)
	end

end

