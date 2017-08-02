class Users::RegistrationsController < Devise::RegistrationsController
  layout 'site'
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  before_action :configure_sign_up_params, only: [:create]

  def create
    @user = User.new(inscription_params)
    set_minimum_password_length
    if @user.save
      redirect_to new_user_session_path, success: 'Inscrição realizada. Agora você pode desfrutar dos eventos da SONU.'
    else
      redirect_to new_user_registration_path, danger: 'Um erro ocorreu, não foi possível processar sua inscrição'
    end
  end

  def update
    @user.cpf = Cpf.new(params[:user][:cpf])
    respond_to do |format|
      if @user.save && @user.update_attributes(user_params)
        flash[:success] = "Cadastro atualizado."
        format.html {  redirect_to perfil_edit_path }
      else
        format.html { render 'edit'}
        format.json {  render json: @user.errors }
      end
    end
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  end

  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end
  def inscription_params
    params.require(:user).permit(:email, :password, :name, :general_register, :cpf, :gender, :birthday, :cep, :state, :adress, :adress_number, :complement, :city, :district, :phone, :cel, :university, :registration_id, :semester, :facebook_profile_link)
  end

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(:email, :name, :general_register, :cpf, :gender, :birthday, :cep, :state, :adress, :adress_number, :complement, :city, :district, :phone, :cel, :university, :registration_id, :semester)
  end

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
