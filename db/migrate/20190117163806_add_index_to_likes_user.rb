class AddIndexToLikesUser < ActiveRecord::Migration[5.2]
  def change
  	add_index :likes, :admirer_id, unique: true
  end
end
