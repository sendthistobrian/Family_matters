class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

   def after_sign_in_path_for(resource)
     profile_path(resource)
   end

   def after_sign_up_path_for(resource)
    profile_path(resource)
   end

  protected

  def configure_permitted_parameters
    additional_fields = [:name, :first_name, :last_name,
      :hometown, :mother, :father, :profile_picture, :birthdate]
  	devise_parameter_sanitizer.for(:sign_up).concat(additional_fields)
  	devise_parameter_sanitizer.for(:account_update).concat(additional_fields)
  end
end
