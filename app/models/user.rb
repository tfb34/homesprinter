class User < ApplicationRecord
	before_save {email.downcase!}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255},
									   format: {with: VALID_EMAIL_REGEX},
									   uniqueness: {case_sensitive: false}
									   
	validates :name, length: {maximum: 50}

	has_secure_password
	validates :password, presence: true, length: {minimum: 8}

	#returns the hash digest of given string
	def User.digest
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
													  BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end
end
