class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include Loginable

  before_action :logged_in_user, if: :need_login?

  private

  def need_login?
    true
  end

  def logged_in_user
    unless logged_in?
      flash[:notice] = 'Please log in.'
      redirect_to login_url
    end
  end
end
