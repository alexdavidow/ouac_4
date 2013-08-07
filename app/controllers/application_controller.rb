class ApplicationController < ActionController::Base
  include ShoppingCartHelper
  protect_from_forgery with: :exception

  def stored_location_for(resource)
    nil
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :shopping_cart_id, :password, :password_confirmation, :remember_me, :identities, :admin, :name, :total_score, :phone, :address, :current_password )}
  end
end
