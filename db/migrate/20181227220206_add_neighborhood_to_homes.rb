class AddNeighborhoodToHomes < ActiveRecord::Migration[5.2]
  def change
  	add_column :homes, :neighborhood, :string
  end
end
