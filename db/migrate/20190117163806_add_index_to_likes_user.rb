class AddIndexToLikesUser < ActiveRecord::Migration[5.2]
  def change
  	add_index :likes, :admirer_id
  end
end
