class SessionsController < ApplicationController
	skip_before_action :authorize
  def new # index

  end

  def create # login
  	user = User.find_by(name: params[:name])
		if user and user.authenticate(params[:password])
			session[:user_id] = user.id

			session[:user_name] = user.name
			redirect_to books_path
		else
			redirect_to login_url, alert: "Invalid user/password combination"
		end
  end

  def destroy # logout
  	session[:user_id] = nil
		redirect_to login_url, notice: "Logged out"
  end
end
