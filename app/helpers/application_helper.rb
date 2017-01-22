module ApplicationHelper
  def logged_in?
    controller.current_user.present?
  end
end
