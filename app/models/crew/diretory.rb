class Crew::Diretory < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :office
end
