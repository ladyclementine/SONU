class Crew::Partner < ApplicationRecord
	mount_uploaders :photos, PhotoUploader
end
