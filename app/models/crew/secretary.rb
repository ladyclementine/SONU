class Crew::Secretary < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	belongs_to :office
end
