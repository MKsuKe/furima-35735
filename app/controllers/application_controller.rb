class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :date_of_birth, :first_name, :last_name, :ruby_first_name, :ruby_last_name])
  end

end
