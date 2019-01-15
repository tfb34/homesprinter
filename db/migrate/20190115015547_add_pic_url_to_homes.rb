class AddPicUrlToHomes < ActiveRecord::Migration[5.2]
  def change
  	add_column :homes, :pic_url, :string
  end
end
