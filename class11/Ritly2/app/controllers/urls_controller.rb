class UrlsController < ApplicationController
	def new
		@url = Url.new
	end

	def show
		@url = Url.find params[:id]

	end

	def create
		save_url = params.require(:url).permit(:link)

	    @url = Url.new save_url

		@url.hash_code = rand(999..10000)	    

	    @url.save

	    redirect_to @url	    
	end	

	def redirectors
		
		@url = Url.new

		@url_drop = Url.find_by hash_code: params[:random]
			
		if  @url = @url_drop
			redirect_to @url.link
		else
			render 'new'
		end
	end

	def preview
		
	end
end
