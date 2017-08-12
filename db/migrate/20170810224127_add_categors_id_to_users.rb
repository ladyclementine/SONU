class AddCategorsIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :categories_ids, :integer
  end
end
