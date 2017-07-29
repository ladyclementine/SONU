class CreateCrewBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_blogs do |t|
      t.string :title
      t.string :introdution
      t.text :description
      t.string :photo
      t.date :date

      t.timestamps
    end
  end
end
