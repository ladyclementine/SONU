class CreateCrewSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_schools do |t|
      t.string :title
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
