class User < ActiveRecord::Base
	has_many :restaraunts, :dependent => :destroy
	 
	has_secure_password validations: false
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true
	validates :password, presence: true, on: :create  

	

	def owner?
		self.roles == 'owner'
	end

	def patron?
		self.roles == 'patron'
	end
end