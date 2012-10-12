class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  helper_method :current_user_f

  private

  def current_user_f
  	if session[:user_id]
  		@current_user ||= User.find_by_uid(session[:user_id])
  		#true
  	else
  		false
  	end
  	
  end
end
