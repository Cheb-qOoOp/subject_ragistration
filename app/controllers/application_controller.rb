class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!, only: :index
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      # devise_parameter_sanitizer.for(:sign_up) << :username
      devise_parameter_sanitizer.for(:account_update) << :name
      devise_parameter_sanitizer.for(:account_update) << :name_kana
      devise_parameter_sanitizer.for(:account_update) << :affiliation
      devise_parameter_sanitizer.for(:account_update) << :tel
      devise_parameter_sanitizer.for(:account_update) << :fax
      devise_parameter_sanitizer.for(:account_update) << :role
    end
end
