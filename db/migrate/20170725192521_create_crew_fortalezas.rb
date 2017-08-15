class CreateCrewFortalezas < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_fortalezas do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
