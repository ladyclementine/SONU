class RemoveCategoryEventsIdFromUser < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :category_event_ids, :string
  end
end
