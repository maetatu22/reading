class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configre_permit_parameters, if: :devise_controller?

  private

  def configre_permit_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :appeal, :age_id, :gender_id])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
     username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]  
    end
  end
end