class Crew::Partner < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates_presence_of :name, :photo
  belongs_to :category_partner
end
