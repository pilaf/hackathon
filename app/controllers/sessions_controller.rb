class SessionsController < ApplicationController
  before_filter :authorize, only: :destroy
  before_filter :redirect_if_logged_in, except: :destroy

  def new
  end

  def create
    user = User.find_by_email_or_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :issues, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
