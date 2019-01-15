class HomesController < ApplicationController
	protect_from_forgery except: :index


	def index
		if(Home.where(neighborhood: params[:filterText].titleize).count > 0)
	  		#@type = "neighborhood"
	  		@homes = Home.where(neighborhood: params[:filterText].titleize)
	  	elsif (Home.where(city: params[:filterText].titleize).count >0)
	  		#type = "city"
	  		@homes = Home.where(city: params[:filterText].titleize)
	  	elsif (Home.where(zipcode: params[:filterText]).count >0)
	  		#type = "zipcode"
	  		@homes = Home.where(zipcode: params[:filterText])
	  	elsif (Home.where(state: params[:filterText].titleize).count >0)
	  		#type = "state"
	  		@homes = Home.where(state: params[:filterText].titleize)
	  		#type = "No Result"
	  	end
        if @homes
            @homes = @homes.where(listing_type: getListingType())
        end
  
	end

	def show

	end

	def create
	end

    private

    def getListingType()
        x = params[:listingType].downcase
        type = "" #default
        if x =="buy"
            type = "For Sale"
        elsif x== "rent"
            type = "For Rent" #sold option not available
        end

        return type;
    end

	
end
