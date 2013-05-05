class UsersController < ApplicationController

  skip_before_filter :authorize

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  protected

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :company, :url, :location)
  end
end
