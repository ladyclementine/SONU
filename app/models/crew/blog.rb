class Crew::Blog < ApplicationRecord
	mount_uploader :photo, PhotoUploader
end
