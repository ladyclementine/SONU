class Crew::AdminsController < Crew::BaseController
  before_action :load_admin, only: [:edit, :update, :destroy]

 
  def index
  end


  def new
    @admins = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to crew_admins_path, notice: "Admin criado com sucesso."
    else
      redirect_to crew_admins_path, alert: "Falha ao cadastrar novo admin."
    end
  end

  def update
    if @admin.update(admin_params)
      redirect_to  crew_admins_path, notice: 'Atualizado com sucesso'
    else
      redirect_to  crew_admins_path, notice: 'Erro'
    end
  end

  def destroy
    if @admin.destroy
      redirect_to crew_admins_path, notice: "O administrador foi excluído."
    else
      redirect_to crew_admins_path, notice: "Não foi possível excluir o administrador."
    end
  end

  private
  def admin_params
    params.require(:admin).permit( :email, :password,
                                  :password_confirmation, :confirmed_at,
                                  )
  end

  def load_admin
    @admin = Admin.find(params[:id])
  end


end
