# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authenticate

  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods

  private

  # This will raise an error and automatically respond with a 401 HTTP status
  # code when API key authentication fails
  def authenticate
    authenticate_or_request_with_http_token do |http_token, options|
      @current_tenant = Tenant.find_by(api_key: http_token)
    end
  end
end
