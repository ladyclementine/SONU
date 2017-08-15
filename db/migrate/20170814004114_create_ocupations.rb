class CreateOcupations < ActiveRecord::Migration[5.0]
  def change
    create_table :ocupations do |t|
      t.string :name

      t.timestamps
    end
  end
end
