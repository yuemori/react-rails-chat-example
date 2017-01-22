class SessionsController < ApplicationController
  skip_before_action :logged_in_user, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: login_params[:name])

    if @user && @user.authenticate(login_params[:password])
      log_in @user

      redirect_to rooms_url, notice: 'Successfly to login'
    else
      @user = User.new(name: login_params[:name])
      flash[:notice] = 'Failed to login'

      render :new
    end
  end

  def destroy
    log_out
    redirect_to login_url
  end

  private

  def login_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
