module Api::V1
	class RequestLogsController < ApiController
    skip_before_action :restrict_access, :only => [:index]

    def index
      @application = Application.find(params[:application_id]) rescue nil
      @request_logs = @application.request_logs.page params[:page]
      render :json => {
        :current_page => @request_logs.current_page,
        :per_page => @request_logs.default_per_page,
        :total_pages => @request_logs.total_pages,
        :request_logs => @request_logs
      }
    end

    def create
      @current_application.request_logs.create(reqeust_log_params)
    end

    private
      def reqeust_log_params
        params.require(:request_log).permit(:user_id, :action, :controller, :params)
      end
  end
end
