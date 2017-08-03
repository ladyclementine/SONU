class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  def get_comitees
    @comitees = Comitee.all
  end

  protected
    def get_user
      @user = current_user
    end

    def after_sign_out_path_for(resource_or_scope)
      if resource_or_scope == :user
        new_user_session_path
      elsif resource_or_scope == :crew_admin
        new_crew_admin_session_path
      else
        new_user_session_path
      end
    end
    
  def authenticate_admin!
      if admin_signed_in?
        super
      else
        redirect_to new_crew_admin_session_path
      end
    end
  end


