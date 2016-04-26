module Api::V1
	class ApplicationsController < ApiController
		skip_before_action :restrict_access

		def index			
			base_pagination(Application.page params[:page])
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