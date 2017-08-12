class DropCategoriIdsFromUsers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :categories_ids, :string
  end
end
