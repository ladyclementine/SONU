class AddPhotosToCrewStories < ActiveRecord::Migration[5.0]
  def change
  	add_column :crew_stories, :photo, :string
  end
end
