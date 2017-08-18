class Crew::UsersController < Crew::BaseController
  before_action :load_user, only: [:edit, :update, :show, :destroy]
  before_action :user_params, only: [:update]

  layout 'admin_dashboard'

  def index
    @users= User.all.order('completed DESC, name ASC')
  end

  def edit
    # @payment = @user.payment
    # @lots = Lot.all
    # @user_lot = @user.lot unless @user.lot.nil?
  end

  def show
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Usuário atualizado com sucesso."
      redirect_to crew_users_path(@user)
    else
      flash[:error] = "Erro ao atualizar cadastro, verique os campos obrigatórios."
      redirect_to edit_crew_user_path(@user)
    end
  end

   def destroy
    if @user.destroy
    flash[:success] = "Usuário deletado com sucesso."
    redirect_to crew_users_path
    else
      flash[:error] = "Erro ao deletar usuário."
      redirect_to crew_users_path
    end
    
  end

  # def qualified
  #   @users = User.allocated
  # end

  def waiting_list
    @users = User.none
  end

  # def disqualified
  #   @users = User.disqualified
  # end
  #
  # def pays_list
  #   @users = User.pays
  # end

  private
  def load_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :general_register, 
      :cpf, :gender, :birthday, :cep, :state, :adress, :adress_number, :complement, 
      :city, :district, :phone, :cel, :university, :registration_id, :semester, 
      :facebook_profile_link, :justify, :answer_1, :answer_3, :experience, :answer_2, 
      :answer_4, :answer_5)
  end
end
