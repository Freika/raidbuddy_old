# Whole application controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  check_authorization unless: :do_not_check_authorization?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end

  private

  def do_not_check_authorization?
    respond_to?(:devise_controller?) # or
    # condition_one? or
    # condition_two?
  end
end
