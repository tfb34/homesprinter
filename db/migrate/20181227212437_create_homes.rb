class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :price
      t.integer :bedrooms
      t.integer :bathrooms

      t.timestamps
    end
  end
end
