class AddCategoriEventIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :category_event_ids, :integer
  end
end
