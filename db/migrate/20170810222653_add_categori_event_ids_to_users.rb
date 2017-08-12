class AddCategoriEventIdsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :category_events_id, :integer
  end
end
