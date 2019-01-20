class LikesController < ApplicationController

	before_action :logged_in_user, only: [:create, :destroy]

	def index
		#need to be logged in
	end

	def create
		@like = current_user.likes.build(home_id: params[:like][:home_id])
		if !current_user.favorite_homes.find_by(id: params[:like][:home_id])
			@like.save
		end

		@home = Home.find_by(id: params[:like][:home_id])
		# logged in, if not logged in redirect ot sign in page, else
		respond_to do |format|
  			format.html {redirect_to root_path}
  			format.js {render layout: false, content_type: 'text/javascript' }
  		end
	end

	def destroy
		# logged in,
		@like = Like.destroy(params[:id])
		@home = Home.find_by(id: params[:like][:home_id])
		
		respond_to do |format|
  			format.html {redirect_to root_path}
  			format.js {render layout: false, content_type: 'text/javascript' }
  		end
	end

	private

	# Confirms a logged in user.
    def logged_in_user
      unless logged_in?
        store_location
        #flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end
