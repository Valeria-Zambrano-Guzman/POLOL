class ApplicationController < ActionController::Base
  devise_group :user, contains: [:customer, :professional]

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || (resource.professional? ? professional_path(current_user.id) : pages_search_path)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :birthdate, :phone_number, :address, :certification, :biography])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :birthdate, :phone_number, :address, :certification, :biography])
  end
end
