class Crew::CategoryEventController < Crew::BaseController

before_action :set_category_event, only: [:show, :edit, :update, :destroy]
  

  def index
  	@category_event = CategoryEvent.all
  end

  def show
  end


  def new
    @category_event = CategoryEvent.new
  end


  def edit
  end

  def create
    @category_event = CategoryEvent.new(category_event_params)
      if  @category_event.save
        flash[:success] = "Categoria criada com sucesso."
        redirect_to crew_category_event_index_path
      else  
         render :new
      end   
    end


  def update
      if  @category_event.update(category_event_params)
        flash[:success] = "Categoria editada com sucesso."
        redirect_to crew_category_event_index_path

      else
        render :new
      end
    end


  def destroy
    @category_event.destroy
    flash[:success] = "Categoria apagada com sucesso."
    redirect_to crew_category_event_index_path
    
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_event
      @category_event = CategoryEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_event_params
      params.require(:category_event).permit(:name, :comitee_id)
    end
end


