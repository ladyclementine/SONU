class DropPhotoFromCrewPartners < ActiveRecord::Migration[5.0]
  def change
  	remove_column :crew_partners, :photo, :string
  end
end
