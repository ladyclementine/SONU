class ComiteesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  layout 'site'
  before_action :authenticate_user!
  before_action :load_comitee
  before_action :get_user
  before_action :check_dual_cpf, only: [:update]
  before_action :ckeck_limits, only: [:update]
  before_action :check_user_exist_in_comitee, only: [:update, :show]
  
  def show
    @users = @comitee.users
  end

  def check_cpf
    user = User.where(cpf: Cpf.new(params[:cpf]))
    if user.any? && user.first != current_user
      if user.first.comitee_id.nil?
        render json: { success: true, name: "#{user.first.name} - #{user.first.type_user}" }
      else
        render json: { success: false, msg: 'Usuário já cadastrado em um Comitê' }
      end
    else
      render json: {success: false, msg: "Nada encontrado!"}
    end
  end

  def update
    respond_to do |format|
      @user.comitee_id = params[:id_evento]
      @user.inscription_date = Time.now
      if @user.update_attributes(user_params)
        flash[:success] = "Cadastro completo, realize o pagamento para garantir sua vaga."
        format.html {  redirect_to show_comitee_path(@user.comitee_id) }
      else
        @user.comitee_id = nil
        flash[:error] = "Erro ao completar cadastro."
        format.html { render 'show' }
        format.json { render json: @user.errors }
      end
    end
  end

  def check_dual_cpf
    @c = Comitee.find(params[:id_evento])
    if @c.dual?

      if user_params[:cpf_dual].nil?
        #ERRO, É NECESSARIO CPF
        flash[:error] = "Este comitê necessita de uma dupla"
        redirect_to show_comitee_path(params[:id_evento])
      else
        #verificar se existe e se está disponivel
        @user_dupla = User.where(cpf: Cpf.new(user_params[:cpf_dual]))
        if @user_dupla.any? && @user_dupla.first != current_user
          if @user_dupla.first.comitee_id.nil?
            return true
          else
            flash[:error] = "Usuário já cadastrado em um Comitê"
            redirect_to show_comitee_path(params[:id_evento])
          end
        else
          flash[:error] = "CPF não encontrado!"
          redirect_to show_comitee_path(params[:id_evento])
        end
      end
    end
  end

  private

  def load_comitee
    @comitee = Comitee.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:cpf_dual, :lider_dual, :categories_ids, :justify, :experience, :answer_1, :answer_2, :answer_3, :answer_4, :answer_5, :face_link)
  end

  def check_user_exist_in_comitee
    if !current_user.comitee.nil? && current_user.comitee.end_date > Time.now 

    end
    if !current_user.comitee_id.nil? && current_user.comitee_id != @comitee.id
      flash[:error] = "Você já cadastrado em um Comitê"
      redirect_to inscription_path
    end
  end

  def ckeck_limits
    if @comitee.is_full?(current_user)
      flash[:error] = "Não há vagas para #{current_user.type_user}, você é #{current_user.type_user}"
      redirect_to inscription_path
      return true
    end

    if @comitee.dual? && @comitee.is_full?(@user_dupla.first)
      flash[:error] = "Não há vagas para #{@user_dupla.first.type_user}, #{@user_dupla.first.name} é #{@user_dupla.first.type_user}"
      redirect_to inscription_path
      return true
    end

    unless @user_dupla.nil? || (@c.is_full?(@user_dupla.first) && @c.is_full?(current_user))
      @user_dupla.first.update_attribute('cpf_dual', current_user.cpf)
      @user_dupla.first.update_attribute('comitee_id', params[:id_evento])
      @user_dupla.first.update_attribute('inscription_date', Time.now)
    end
  end
end
