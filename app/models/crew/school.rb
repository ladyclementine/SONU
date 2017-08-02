class Crew::School < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	after_commit :remove_photo!, on: :destroy



end
