class AddPhotoToCrewApresentations < ActiveRecord::Migration[5.0]
  def change
  	add_column :crew_apresentations, :photo, :string
  end
end
