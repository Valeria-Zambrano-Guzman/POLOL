class ApplicationController < ActionController::Base
  devise_group :user, contains: [:customer, :professional]
end
