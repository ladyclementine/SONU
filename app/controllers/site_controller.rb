class SiteController < ApplicationController
  layout 'site'

  
  def index
  end

  def academic
  end

  def beta
  end

  def certificates
  end

  def comitees
  end

  def contact
  end

  def cronogram
  end

  def diretory
  end

  def faq
  end

  def fortaleza
  end

  def inscription
  end

  def muns
    @crew_muns = Crew::Mun.all.order("created_at ASC")
  end

  def parties
    @crew_parties = Crew::Party.all.order("created_at ASC")
  end

  def partners
  end

  def perfil
  end

  def schools
  end

  def secretary
    @crew_secretaries = Crew::Secretary.all.order("created_at ASC")
  end

  def apresentation
    @crew_apresentations = Crew::Apresentation.all
  end

  def solidary
  end

  def speeches
  end

  def story
  end

  def story
  end

  def press
  end

end
