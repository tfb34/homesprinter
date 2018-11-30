class User < ApplicationRecord

	attr_accessor :remember_token, :reset_token
	attr_accessor :location
	before_save {email.downcase!}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255},
									   format: {with: VALID_EMAIL_REGEX},
									   uniqueness: {case_sensitive: false}
									   
	validates :name, length: {maximum: 50}

	has_secure_password
	validates :password, presence: true, length: {minimum: 8}

	#returns the hash digest of given string
	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
													  BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end

	# Returns a random token
	def User.new_token
		SecureRandom.urlsafe_base64
	end

	def remember
		self.remember_token = User.new_token
		update_attribute(:remember_digest, User.digest(remember_token))
	end

	# Returns true if the given token matches the digest
	def authenticated?(attribute, token)
		digest = send("#{attribute}_digest")
		return false if digest.nil?
		BCrypt::Password.new(digest).is_password?(token)
	end

	# Forgets a user.
	def forget
		update_attribute(:remember_digest, nil)
	end

	# Sets the password reset attribute
	def create_reset_digest
		self.reset_token = User.new_token
		update_attribute(:reset_digest, User.digest(reset_token))
		update_attribute(:reset_sent_at, Time.zone.now)
	end

	# Sends password reset email
	def send_password_reset_email
		UserMailer.password_reset(self).deliver_now
	end

	# Returns true if password reset has expired.
	def password_reset_expired?
		reset_sent_at < 2.hours.ago
	end
end
