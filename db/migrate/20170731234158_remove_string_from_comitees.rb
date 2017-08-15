class RemoveStringFromComitees < ActiveRecord::Migration[5.0]
  def change
  	remove_column :comitees, :string, :string
  end
end
