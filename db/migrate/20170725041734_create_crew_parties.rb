class CreateCrewParties < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_parties do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
