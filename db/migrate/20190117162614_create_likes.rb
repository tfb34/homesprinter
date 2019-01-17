class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :admirer_id
      t.integer :home_id
      t.timestamps
    end
  end
end
