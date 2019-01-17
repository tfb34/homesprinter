class Like < ApplicationRecord
	belongs_to :home
	belongs_to :admirer, :class_name => "User"
end
