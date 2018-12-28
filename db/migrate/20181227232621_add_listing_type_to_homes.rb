class AddListingTypeToHomes < ActiveRecord::Migration[5.2]
  def change
  	add_column :homes, :listing_type, :string
  end
end
