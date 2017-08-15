class AddOfficeToCrewSecretary < ActiveRecord::Migration[5.0]
  def change
    add_reference :crew_secretaries, :office, foreign_key: true
  end
end
