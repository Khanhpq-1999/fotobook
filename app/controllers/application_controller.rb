class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  PER_PAGE = 8

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :password])
  end

end
