class DropCrewMuns < ActiveRecord::Migration[5.0]
  def change
  	drop_table :crew_muns
  end
end
