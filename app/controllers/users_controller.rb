class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  	#debugger
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to @user
  	else
  		@user.valid?
  		render 'new'
  	end
  end

  private

  	def user_params
  		params.require(:user).permit(:email, :password, :password_confirmation)
  	end

end
