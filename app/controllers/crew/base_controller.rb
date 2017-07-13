class Crew::BaseController < ApplicationController
  layout "admin_dashboard"
  
  before_action :authenticate_crew_admin!
  before_action :get_admin

  def get_admin
    @admin = current_crew_admin
  end

end
