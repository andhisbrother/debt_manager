class ApplicationController < ActionController::Base
  protect_from_forgery
end

	def require_login
		unless session[:user_id]
		flash[:error] = "Musite sa prihlasit"
		redirect_to new_session_url
		end
	end

	def current_user
		User.find(session[:user_id]) if :user_id = nil
	end
