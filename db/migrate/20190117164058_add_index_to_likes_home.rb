class AddIndexToLikesHome < ActiveRecord::Migration[5.2]
  def change
  	add_index :likes, :home_id, unique: true
  end
end
