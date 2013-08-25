class SessionsController < ApplicationController
  def create
    fbuser = Fbuser.from_omniauth(env["omniauth.auth"])
    session[:fbuser_id] = fbuser.id
    redirect_to root_url
  end

  def destroy
    session[:fbuser_id] = nil
    redirect_to root_url
  end

end