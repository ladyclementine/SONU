class NotificationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:confirm_payment]

  def confirm_payment
    transaction = PagSeguro::Transaction.find_by_notification_code(params[:notificationCode])

    if transaction.errors.empty?
      Rails.logger.info "\n\n\n TRANSAÇÃO ENCONTRADA"
      #Rails.logger.info "\n\n  Enviada por #{transaction.items}"

      Rails.logger.info "\n\n  Status: #{transaction.status.status}"
      #user = User.where(email: 'pixelzip0@gmail.com').first #EM TESTE
      user = User.where(id: transaction.reference.split('user')[1]).first
      payment_user = user
      case transaction.status.status
      when :initiated
        payment_user.payment_status = "Em processamento"
      when :waiting_payment
        payment_user.payment_status = "Em processamento"
      when :in_analysis
        payment_user.payment_status = "Em processamento"
      when :paid
        if user.comitee.dual?
          dupla = User.where(cpf: Cpf.new(user.cpf_dual))
          if dupla.any?
            dupla.first.payment_status = "Pago"
            dupla.first.paid_on = Time.now
            dupla.first.save(:validate => false)
          end
          payment_user.payment_status = "Pago"
          payment_user.paid_on = Time.now
        else
          payment_user.payment_status = "Pago"
          payment_user.paid_on = Time.now
        end
      when :avaliable
        if user.comitee.dual?
          dupla = User.where(cpf: Cpf.new(user.cpf_dual))
          if dupla.any?
            dupla.first.payment_status = "Pago"
            dupla.first.paid_on = Time.now
            dupla.first.save(:validate => false)
          end
          payment_user.payment_status = "Pago"
          payment_user.paid_on = Time.now
        else
          payment_user.payment_status = "Pago"
          payment_user.paid_on = Time.now
        end
      when :in_dispute
      when :refunded
        payment_user.payment_status = "Não processado"
        payment_user.paid_on = nil
        # user.lot = nil
        payment_user.portion_paid = 0
      when :cancelled
        payment_user.payment_status = "Não processado"
        payment_user.paid_on = nil
      when :chargeback_charged
        payment_user.payment_status = "Não processado"
        user.paid_on = nil
      when :contested
        payment_user.payment_status = "Não processado"
      end
      payment_user.save!(:validate => false)
    else
      Rails.logger.info "\n\n\n   Erros ao receber notificação:"
      transaction.errors.to_a.each do |error|
        Rails.logger.info "  - #{error}"
      end
    end


    render body: nil, status: 200
  end
end
