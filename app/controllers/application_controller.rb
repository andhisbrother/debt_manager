class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

	def require_login
		unless session[:user_id]     #if session[:user_id] == nil
			flash[:error] = "Musite sa prihlasit"
			redirect_to new_session_url
		end
	end

	def current_user
		User.find(session[:user_id]) if session[:user_id]
	end
end