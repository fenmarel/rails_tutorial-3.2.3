class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			# sign in and render user profile
			sign_in user
			redirect_back_or user
		else
			# output error message and redirect back to signin
			flash.now[:error] = "Invalid user email or password, please retry."
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end
end
