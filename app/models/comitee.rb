class Comitee < ApplicationRecord
  has_many :users
  has_many :category_events
  
  mount_uploader :photo, PhotoUploader
  enum type_event: { "Ensino Superior": 1,  "Ensino Médio": 0}

  def dual?
    self.dual == true ? true : false
  end

  def paid_comitee_value(user)
    total = 0
    if self.dual?
      if user.is_cotist == true
        total += self.value_cotist
      else
        total += self.value_not_cotist
      end
      "#{total}R$ + #{self.value_cotist}R$ para a dupla cotista ou #{total}R$ + #{self.value_not_cotist}R$ para a dupla não cotista."
    else
      #comitê individual
      user.is_cotist? ? self.value_cotist : self.value_not_cotist
    end
  end

  def paid_comitee_value_pagseguro(user)
    total = 0
    if self.dual?
      if user.is_cotist == true
        total += self.value_cotist
      else
        total += self.value_not_cotist
      end
      dupla = User.where(cpf: Cpf.new(user.cpf_dual)).first
      if dupla.is_cotist == true
        total += self.value_cotist
      else
        total += self.value_not_cotist
      end
      total
    else
      #comitê individual
      user.is_cotist? ? self.value_cotist : self.value_not_cotist
    end
  end

  def is_full?(user)
    if user.is_cotist == true
      self.users.where(is_cotist:true).count >= self.limit_cotist.to_i
    else
      self.users.where(is_cotist:false).count >= self.limit.to_i
    end
  end

  def check_limit_cotist_full?(user)
    if user.is_cotist == true
      self.users.count >= self.limit_cotist
    else
      true
    end
  end

  def self.get_actives
    now = Time.now
    Comitee.all.each do |comitee|
      if now > comitee.start_date && now < comitee.end_date
        return comitee
      end
    end
    nil
  end

  def self.get_passed
    now = Time.now
    Comitee.all.each do |comitee|
      if now > comitee.end_date
        return comitee
      end
    end
    nil
  end

  def is_active
    now = Time.now
    if now > self.start_date && now < self.end_date
      return true
    end
    return false
  end

  def is_passed
    now = Time.now
    if now > self.end_date
      return true
    end
    return false
  end

  # def qnt_pays_total
  #   self.users.joins(:payment).where("payments.portion_paid=payments.portions").count
  # end
  #
  # def qnt_pays_partial
  #   self.users.joins(:payment).where("payments.portion_paid>0").where("payments.portion_paid!=payments.portions").count
  # end

  # def self.totalLimit
  #   self.sum(:limit)
  # end

end
