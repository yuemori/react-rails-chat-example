class UsersController < ApplicationController
  skip_before_action :logged_in_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      redirect_to rooms_url, notice: 'Successfly signed up!'
    else
      render :new, notice: 'Failed to signed up'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
