class HomesController < ApplicationController
	protect_from_forgery except: :index
	def index
		@homes = Home.all #unless stated otherwise like params
	end

	def show

	end

	def create
	end
	
end
