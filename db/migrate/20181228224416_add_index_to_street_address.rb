class AddIndexToStreetAddress < ActiveRecord::Migration[5.2]
  def change
    add_index :homes, :street_address, unique: true
  end
end
