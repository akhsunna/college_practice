class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :place, :password_confirmation, :remember_me, :avatar, :avatar_cache, :editor) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :place, :password_confirmation, :current_password, :avatar, :avatar_cache, :editor) }
  end
end
