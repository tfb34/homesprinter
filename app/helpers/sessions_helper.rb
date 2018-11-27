module SessionsHelper

	# Remembers a user for a persistent session
	def remember(user)
		user.remember 
		cookies.permanent.signed[:user_id] = user.id 
		cookies.permanent[:remember_token] = user.remember_token
	end

	# logs in the given user
	def log_in(user)
		session[:user_id] = user.id# this session method automatically encrypts id
	end

	#Returns the current logged in user(if any)
	def current_user
		if(user_id = session[:user_id])
			@current_user ||= User.find_by(id: user_id)
		elsif (user_id = cookies.signed[:user_id])
			user = User.find_by(id: user_id)
			if user && user.authenticated?(cookies[:remember_token])
				log_in user
				@current_user = user 

			end
		end
	end

	#Returns true if given user matches current user, otherwise false.
	def current_user?(user)
		@user == current_user
	end

	# Redirects to stored location(or to default)
	def redirect_back_or(default)
		redirect_to(session[:forwarding_url] || default)
		session.delete(:forwarding_url)
	end

	# Stored the URL trying to be accessed
	def store_location
		session[:forwarding_url] = request.original_url if request.get?
	end

	# Returns true if the user is logged in, false otherwise.
	def logged_in?
		!current_user.nil?
	end

	#Logs out the current user
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

	# Forgets a persistent session
	def forget(user)
		user.forget
		if(cookies[:user_id])
		cookies.delete[:user_id]
		cookies.delete[:remember_token]
		end
	end

	# Logs out the current user

	def logs_out
		forget(current_user)
		session.delete[:user_id]
		@current_user = nil
	end

end
