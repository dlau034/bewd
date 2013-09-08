class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

  	def current_user 
  		if session[:user_id]
  			User.find(session[:user_id])
  		else
  			nil
  		end

  	end

	helper_method :current_user 

	def authenticate_user!
		if current_user.blank?
			redirect_to bicycle_orders_path
		end		
	end	
end
