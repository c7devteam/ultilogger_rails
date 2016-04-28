module Api::V1
  class TextLogsController < ApiController
    skip_before_action :restrict_access, :only => [:index]

    def index
      @application = Application.find(params[:application_id]) rescue nil      
      base_pagination(@application.text_logs.page(params[:page]))
    end

    def create
      @text_log = @current_application.text_logs.create(text_log_params)
      if params[:tags] != nil
        result = params[:tags].delete(' ').split(/,/)
        result.each do |tag|
          @text_log.tags.create(text: tag)
        end
      end
      render json: { success: true, message: 'created text log' }
    end

    private
      def text_log_params
        params.require(:text_log).permit(:text)
      end

  end
end
