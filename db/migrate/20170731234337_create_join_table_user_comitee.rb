class CreateJoinTableUserComitee < ActiveRecord::Migration[5.0]
  def change
  	create_join_table :users, :comitees
  end
end
