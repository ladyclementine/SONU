class CreateCrewSecretaries < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_secretaries do |t|
      t.string :office
      t.string :name
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
