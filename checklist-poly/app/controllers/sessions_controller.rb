class SessionsController < ApplicationController
  def new
  end

  def create
    profile = MemberProfile.find_by_username(params[:username])
    if profile && profile.authenticate(params[:password])
      session[:user_id] = profile.user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Name or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
