class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  # attr_accessor :username

  after_action :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token
  end

  def verified_request?
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end

  def configure_permitted_parameters

    added_attrs = [:email, :password, :password_confirmation]

    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs

    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs

    devise_parameter_sanitizer.permit :account_update, keys: added_attrs

  end

end
