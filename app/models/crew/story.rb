class Crew::Story < ApplicationRecord
	mount_uploader :photo, PhotoUploader
end
