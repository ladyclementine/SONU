class Crew::Partner < ApplicationRecord
  mount_uploaders :photos, PhotoUploader
  validates_presence_of :title, :photos
end
