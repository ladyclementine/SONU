class AddComiteeToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :comitee_id, :integer
  end
end
