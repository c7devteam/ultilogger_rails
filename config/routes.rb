Rails.application.routes.draw do

	namespace :api do
		namespace :v1 do
			resources :applications, only: [:index, :show, :create, :update] do
				resources :request_logs, only: [:index, :show, :create], path: '/request-logs'
				resources :text_logs, only: [:index, :show, :create], path: '/text-logs'
			end
		end
	end
end
