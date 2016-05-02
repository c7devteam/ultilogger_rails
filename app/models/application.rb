class Application < ApplicationRecord
	has_many :request_logs, -> { order 'created_at desc' }
	has_many :text_logs, -> { order 'created_at desc' }
	before_create :generate_token

	private
		def generate_token
			self.token = SecureRandom.hex
		end
end
