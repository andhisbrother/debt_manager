class SessionsController < ApplicationController

	def new
	
	end

	def create
		users = User.where(:email => params[:email], :password => params[:password])
		if users.any?
			session[:user_id] = user.first.id

			flash[:notice] = "Bol si prihlaseny"
			redirect_to root_path
		else
			flash[:error] = "Nespravne prihlasenie"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to new_session_url
	end

end
