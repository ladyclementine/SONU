class SiteController < ApplicationController
  before_action :get_blog,  only: [:show]
  before_action :get_user,  only: [:perfil]
  layout 'site'

  
  def index
    @crew_blogs = Crew::Blog.all.order("created_at DESC")
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
   @crew_diretories = Crew::Diretory.all
  end

  def faq
  end

  def fortaleza
    @crew_fortalezas = Crew::Fortaleza.all
  end

  def inscription
     @comitees = Comitee.all
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
     @crew_schools = Crew::School.all
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
    @crew_stories = Crew::Story.all
  end

  def press
  end

  def news
    @crew_blogs = Crew::Blog.all.order("created_at DESC")
  end

  def show
  end

  private
  def get_blog
    @crew_blogs= Crew::Blog.find(params[:id]) 
  end

end
