class CreateCrewBigSonuSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_big_sonu_schedules do |t|
      t.text :activity
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
