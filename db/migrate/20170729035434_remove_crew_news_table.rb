class RemoveCrewNewsTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :crew_news
  end
end
