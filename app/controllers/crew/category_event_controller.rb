class Crew::CategoryEventController < Crew::BaseController

before_action :set_category_event, only: [:show, :edit, :update, :destroy]
  
  # GET /graduations
  # GET /graduations.json
  def index
  	@category_event = CategoryEvent.all
  end

  # GET /graduations/1
  # GET /graduations/1.json
  def show
  end

  # GET /graduations/new
  def new
    @category_event = CategoryEvent.new
  end

  # GET /graduations/1/edit
  def edit
  end

  # POST /graduations
  # POST /graduations.json
  def create
    @category_event = CategoryEvent.new(category_event_params)
      if  @category_event.save
        flash[:success] = "Categoria criada com sucesso."
        redirect_to crew_category_event_index_path
      else  
         render :new
      end   
    end

  # PATCH/PUT /graduations/1
  # PATCH/PUT /graduations/1.json
  def update
    respond_to do |format|
      if  @category_event.update(category_event_params)
        format.html { redirect_to @graduation, notice: 'Graduation was successfully updated.' }
        format.json { render :show, status: :ok, location: @graduation }
      else
        format.html { render :edit }
        format.json { render json: @graduation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graduations/1
  # DELETE /graduations/1.json
  def destroy
    @category_event.destroy
    respond_to do |format|
      format.html { redirect_to graduations_url, notice: 'Graduation was successfully destroyed.' }
      format.json { head :no_content }
    end
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


