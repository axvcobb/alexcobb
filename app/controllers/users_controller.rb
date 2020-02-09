class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    if User.count < 1
      @user = User.create(params.require(:user).permit(:username,
      :password))
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to root_path
    end
  end
end
