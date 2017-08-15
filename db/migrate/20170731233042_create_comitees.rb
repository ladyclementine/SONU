class CreateComitees < ActiveRecord::Migration[5.0]
  def change
    create_table :comitees do |t|
      t.string :name
      t.string :grade
      t.integer :limit
      t.float :value_not_cotist
      t.float :value_cotist
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.string  :photo, :string
	  t.integer :type_event
	  t.text :description
	  t.integer :limit_cotist
	  t.string :question_1
	  t.string :question_2
	  t.string :question_3 
	  t.string :question_4
	  t.string  :question_5
	  t.boolean :dual

      t.timestamps null: false
    end
  end
end
