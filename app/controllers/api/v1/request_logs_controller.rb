module Api::V1
	class RequestLogsController < ApiController
    skip_before_action :restrict_access, :only => [:index]

    def index
      @application = Application.find(params[:application_id]) rescue nil
      base_pagination(@application.request_logs.page params[:page])
    end

    def create
      @current_application.request_logs.create(user_id: params[:user_id], action: params[:action], controller: params[:the_controller], params: params[:params], ip_address: request.ip)
    end

  end
end
