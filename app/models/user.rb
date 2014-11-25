class User < ActiveRecord::Base
	has_many :restaraunts 
	has_secure_password validations: false
	validates :username, presence: false

	

	def owner?
		self.roles == 'owner'
	end

	def patron?
		self.roles == 'patron'
	end
end