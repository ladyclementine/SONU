class AddPhotosToCrewPartners < ActiveRecord::Migration[5.0]
  def change
    add_column :crew_partners, :photos, :string, array: true, default: [] 
end
end