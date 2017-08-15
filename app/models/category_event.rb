class CategoryEvent < ApplicationRecord
	belongs_to :comitee
	belongs_to :users
end
