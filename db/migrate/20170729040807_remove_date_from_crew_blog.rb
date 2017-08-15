class RemoveDateFromCrewBlog < ActiveRecord::Migration[5.0]
  def change
    remove_column :crew_blogs, :date, :date
  end
end
