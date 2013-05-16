class SessionsController < ApplicationController
	

	def new
	end

	def create
		@user = User.where(:email => params[:email], :password => params[:password])
		if @user.any?
			session[:user_id] = @user.first.id

			flash[:notice] = "Boli ste prihlaseny"
			redirect_to root_path
		else
			flash[:error] = "Nespravne prihlasenie. Mozno len preklep, skuste znova."
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to new_session_url
	end

end
