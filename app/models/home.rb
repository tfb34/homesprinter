class Home < ApplicationRecord
	
	has_many :likes
	has_many :admirers, :through => :likes

	validates :street_address, presence:true
	validates :city, presence:true
	validates :state, presence:true
	validates :zipcode, presence:true
	validates :price, presence:true
	validates :bedrooms, presence:true
	validates :bathrooms, presence:true
	
end
