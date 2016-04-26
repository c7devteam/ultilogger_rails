module Api::V1
	class ApiController < ApplicationController
		include ActionController::HttpAuthentication::Token::ControllerMethods
	 	before_action :restrict_access
		private
			def restrict_access
					authenticate_or_request_with_http_token do |token, options|
						@current_application = Application.where(token: token).first
					end
			end
	end
end
