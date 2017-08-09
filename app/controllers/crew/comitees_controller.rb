class Crew::ComiteesController < Crew::BaseController
  before_action :load_comitee, only: [:show, :edit, :update, :destroy]

  layout 'admin_dashboard'

  def index
    @comitees = Comitee.all
  end

  def edit
  end

  def show
    @users = @comitee.users
  end

  def new
    @comitee = Comitee.new
  end

  def create
    @comitee = Comitee.new(comitee_params)
    if @comitee.save
      flash[:success] = "Comitê criado com sucesso."
      redirect_to crew_comitees_path
    else
      render :new
    end
  end

  def update
    if @comitee.update(comitee_params)
      flash[:success] = "Comitê editado com sucesso."
      redirect_to crew_comitees_path
    else
      redirect_to edit_crew_comitee_path(@comitee), alert: "Não foi possível alterar comitê."
    end
  end

  def days3
    data = Time.now.getutc
    @users = User.where('inscription_date <= :three_days_ago', :three_days_ago => Time.now - 3.days
  ).where(paid_on: nil)
  end

  def unsubscribe_user
    @user = User.find(params[:user_id])
    @comitee_id = @user.comitee_id
    @user.comitee_id = nil
    @user.cpf_dual = nil
    @user.answer_1 = nil
    @user.answer_2 = nil
    @user.answer_3 = nil
    @user.answer_4 = nil
    @user.answer_5 = nil
    @user.justify = nil
    @user.experience = nil
    @user.face_link = nil
    @user.paid_on = nil
    @user.payment_status = 'Pendente'
    if @user.save(:validate => false)
      flash[:success] ='Removido com sucesso.'
       redirect_to crew_comitee_path(@comitee_id)
    else

      flash[:error] = "Erro ao remover usuário."
      redirect_to crew_comitee_path(@comitee_id)
    end
  end


  private
  def load_comitee
    @comitee = Comitee.find(params[:id])
  end

  def comitee_params
    params.require(:comitee).permit(:name, :limit, :value_cotist,
                                :value_not_cotist, :start_date, :end_date, :type_event, 
                                :description, :question_1, :question_2, :question_3, :question_4, :question_5,
                                :dual, :limit_cotist, :photo)
  end

end
