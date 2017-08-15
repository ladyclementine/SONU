class CategoryPartner < ApplicationRecord
	has_many :crew_partners,  class_name: 'Crew::Partner'
end
