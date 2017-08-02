class AddIsCotisteCToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :is_cotist, :boolean, default: false
  end
end
