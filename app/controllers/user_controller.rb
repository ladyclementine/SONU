class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :get_user
  layout 'site'
  def change_cotist
    if @user.comitee_id.nil?
      if @user.is_cotist == true
        @user.is_cotist = false
      else
        @user.is_cotist = true
      end
      if @user.save!(:validate => false)
        flash[:success] = "Alterado com sucesso. Solicitaremos a documentação caso você seja cotista."
        redirect_to show_comitee_path(params[:comitee_id])
      else
        flash[:error] = "Erro ao alterar. Entre em contato!"
        redirect_to show_comitee_path(params[:comitee_id])
      end
    else
      flash[:error] = "Não é possivel alterar após se cadastrar em um comitê =("
      redirect_to show_comitee_path(params[:comitee_id])
    end
  end

end
