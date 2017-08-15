class AddColumnToOffices < ActiveRecord::Migration[5.0]
  def change
    add_column :offices, :is_secretary, :boolean
  end
end
