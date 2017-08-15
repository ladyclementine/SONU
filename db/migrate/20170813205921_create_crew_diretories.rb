class CreateCrewDiretories < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_diretories do |t|
      t.string :name
      t.string :photo
      t.string :description
      t.references :office, foreign_key: true

      t.timestamps
    end
  end
end
