class Office < ApplicationRecord
	has_many :diretories,  class_name: 'Crew::Diretory'
	has_many :secretaries,  class_name: 'Crew::Secretary'
end
