class User < ActiveRecord::Base

	has_secure_password
	validates :email, uniqueness: true
	validates :name, :email, presence: true

end