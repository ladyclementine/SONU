module ApplicationHelper
 def find_eventcategories_by_ids(ids)
    CategoryEvent.where(id: ids.chars)
  end
end
