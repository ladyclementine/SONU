class CreateCrewNews < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_news do |t|
      t.string :title
      t.string :introdution
      t.text :description
      t.string :photo
      t.date :date

      t.timestamps
    end
  end
end
