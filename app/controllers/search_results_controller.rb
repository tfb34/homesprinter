class SearchResultsController < ApplicationController
  protect_from_forgery except: :create

  def create
  	#@homes = Home.where(neighborhood: params[:neighborhood]).or(Home.where(city: params[:city]))
  	#@homes = Home.all
  	#find location format
 
  	@homes = getHomes()
  		
  	
  	respond_to do |format|
  		format.html {redirect_to root_path}
  		format.js {render layout: false, content_type: 'text/javascript' }
  	end
  	
  end

  private

  def getHomes()
  	#type = ""
  	homes = nil
  	if(Home.where(neighborhood: params[:filterText].titleize).count > 0)
  		#@type = "neighborhood"
  		homes = Home.where(neighborhood: params[:filterText].titleize)
  	elsif (Home.where(city: params[:filterText].titleize).count >0)
  		#type = "city"
  		homes = Home.where(city: params[:filterText].titleize)
  	elsif (Home.where(zipcode: params[:filterText]).count >0)
  		#type = "zipcode"
  		homes = Home.where(zipcode: params[:filterText])
  	elsif (Home.where(state: params[:filterText].titleize).count >0)
  		#type = "state"
  		homes = Home.where(state: params[:filterText].titleize)
  		#type = "No Result"
  	end
  	
  	#if(homes.count > 0)
  		#homes.where(listing_type: getListingType()).where('price BETWEEN ? AND ?', getMinPrice(), getMaxPrice()).where('bedrooms >= ?', params[:bedrooms])
  	#end

  	return homes.where(listing_type: getListingType()).where('price BETWEEN ? AND ?', getMinPrice(), getMaxPrice()).where('bedrooms >= ?', params[:bedrooms])
  end


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

  def getMinPrice()
  	minPrice = params[:minPrice]

  	if(minPrice == "No Min")
  		minPrice = 0
  	end

  	return minPrice
  end

  def getMaxPrice()
  	maxPrice = params[:maxPrice]
  	if maxPrice == "No Max"
  		maxPrice = Home.maximum('price')
  	end

  	return maxPrice
  end
end
