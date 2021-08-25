class ApplicationController < ActionController::Base
  devise_group :user, contains: [:customer, :professional]

  private

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || (resource.professional? ? professional_path(current_user.id) : pages_search_path)
  end
end
