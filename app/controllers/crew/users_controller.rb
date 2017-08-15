class Crew::UsersController < Crew::BaseController
  before_action :load_user, only: [:edit, :update, :show, :destroy]

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
    @users.destroy_attributes(user_params)
    flash[:success] = "Usuário apagado com sucesso."
    redirect_to crew_users_path
    
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
    params.require(:user).permit(:email, :password, :name,
              :general_register,
                           :cpf,
                        :gender,
                      :birthday,
                           :cep,
                         :state,
                        :adress,
                 :adress_number,
                    :complement,
                          :city,
                      :district,
                         :phone,
                           :cel,
                    :university,
               :registration_id,
                      :semester,
         :facebook_profile_link,
                      :cpf_dual,
                      :answer_1 ,
                      :answer_2 ,
                      :answer_3 ,
                      :answer_4 ,
                      :answer_5,
                       :justify,
                    :experience,
                     :face_link,
                     :completed,
                        :active,
                        :lot_id,
                       :paid_on,
                       :room_id,
                    :lider_dual,
              :inscription_date,
                    :comitee_id,
                     :is_cotist,
                :payment_status,
            :category_events_id,
                :categories_ids => [])
  end
end
