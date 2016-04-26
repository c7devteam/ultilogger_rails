module Api::V1
	class ApiController < ApplicationController
		include ActionController::HttpAuthentication::Token::ControllerMethods
	 	before_action :restrict_access
		private
			def restrict_access
					authenticate_or_request_with_http_token do |token, options|
						@current_application = Application.where(token: token, active: true).first
					end
			end
			def base_pagination(model)
				render :json => {
					:current_page => model.current_page,
					:per_page => model.default_per_page,
					:total_pages => model.total_pages,
					:data => model
				}
			end
	end
end
