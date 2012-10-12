class SessionsController < ApplicationController
	def new
	end

	# def destroy
	# 	flash[:successful] = 'Signed out successfully!!!!'
	# 	sign_out
	# 	redirect_to root_url
	# end

	# def create
	# 	user = User.find_by_email(params[:session][:email].downcase)
	# 	if user && user.authenticate(params[:session][:password])
	# 		sign_in user
	# 		@user = user
	# 		flash[:successful] = 'Signed In successfully!!!!'
	# 		redirect_to root_path

	# 	else
	# 		flash.now[:error] = 'Invalid email/password combination' # Not quite right!
	# 		render 'new'
	# 	end

	# end

	def create
		#raise request.env["omniauth.auth"].to_yaml
		auth = request.env["omniauth.auth"]
		user = User.find_by_uid(auth["uid"]) || User.create_with_omniauth(auth)
		sign_in user
		session[:user_id] = user.uid
		flash[:success] = "Signed in successfully via facebook"
		redirect_to root_path
		#raise session[:user_id]
	end

	def destroy
		flash[:success] = "Signed out successfully via facebook"
		session.delete(:user_id)
		redirect_to root_path
	end





end
