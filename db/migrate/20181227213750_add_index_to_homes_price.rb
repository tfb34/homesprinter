class AddIndexToHomesPrice < ActiveRecord::Migration[5.2]
  def change
  	add_index :homes, :price, unique: true
  end
end
