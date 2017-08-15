class CreateCrewPartners < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_partners do |t|
      t.string :name
      t.string :photo
      t.references :category_partner, foreign_key: true

      t.timestamps
    end
  end
end
