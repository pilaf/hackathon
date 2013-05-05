class UsersController < ApplicationController
  before_filter :redirect_if_logged_in

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :issues, notice: "Thank you for signing up!"
    else
      flash.now.alert = "Please verify your info."
      render "new"
    end
  end

  protected

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :company, :url, :location)
  end
end
