class AddPhotosToCrewMuns < ActiveRecord::Migration[5.0]
  def change
  add_column :crew_muns, :photo, :string
  end
end
