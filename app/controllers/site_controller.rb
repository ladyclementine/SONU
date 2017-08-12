class SiteController < ApplicationController
  before_action :get_blog,  only: [:show]
  before_action :get_user,  only: [:perfil]
  before_action :get_comitee, only: [:show_comitee]
  layout 'site'

  
  def index
    @crew_blogs = Crew::Blog.all.order("created_at DESC")
    @partners = Crew::Partner.all
  end

  def academic
  end

  def beta
  end

  def certificates
  end

  def comitees
    @crew_big_sonu_comitees = Crew::BigSonuComitee.all.order("created_at ASC")
  end

  def show_comitee
    @crew_big_sonu_comitees = Crew::BigSonuComitee.all.order("created_at ASC")
  end  

  def contact
  end

  def cronogram
    @crew_big_sonu_schedules = Crew::BigSonuSchedule.all
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
    @crew_blogs = Crew::Blog.all.order("created_at DESC").paginate(page: params[:page], per_page: 4)
  end


  def show
  end

  private
  def get_blog
    @crew_blogs= Crew::Blog.find(params[:id]) 
  end

  def get_comitee
    @crew_big_sonu_comitee = Crew::BigSonuComitee.find(params[:id])
  end 

end
