class AddPhotosToCrewFortaleza < ActiveRecord::Migration[5.0]
  def change
  	add_column :crew_fortalezas, :photo, :string
  end
end
