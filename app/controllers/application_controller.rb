class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_user
    @current_user ||= Fbuser.find(session[:fbuser_id]) if session[:fbuser_id]
  end
  helper_method :current_user
end