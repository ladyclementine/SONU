class AddPhotoToCrewParties < ActiveRecord::Migration[5.0]
  def change
  	add_column :crew_parties, :photo, :string
  end
end
