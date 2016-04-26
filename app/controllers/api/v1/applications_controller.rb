module Api::V1
	class ApplicationsController < ApiController
		skip_before_action :restrict_access

		def index
			@applications = Application.page params[:page]
			render :json => {
				:current_page => @applications.current_page,
				:per_page => @applications.default_per_page,
				:total_pages => @applications.total_pages,
				:request_logs => @applications
			}			
		end

		def create
			@application = Application.new(application_params)
			@application.save
		end

		def update
			@application = Application.find(params[:id])
			@application.update(application_params)
		end

		private
			def application_params
				params.require(:application).permit(:name, :active)
			end
	end
end
