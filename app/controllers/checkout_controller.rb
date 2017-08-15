class CheckoutController < ApplicationController
  before_action :authenticate_user!
  before_action :get_user
  before_action :find_comitee
  before_action :check_paid
  #before_action :find_comitee_type


  def pagseguro
    redirect_to @user.pay_pagseguro
  end

  private
  def find_comitee
    if @user.comitee_id.nil?
      render html: 'Usuário não cadastrado em um evento.'
      return false
    end
  end

  #def find_comitee_type
    #if @user.comitee.dual?
      #if @user.lider_dual!=true
        #render html: 'Sua dupla foi encarregada de pagar =)'
        #return false
      #end
    #end
  #end

  def check_paid
    unless @user.paid_on.nil?
      render html: 'Parece que você já pagou!'
      return false
    end
  end

end
