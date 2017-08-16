class Crew::ApresentationsController < Crew::BaseController
  before_action :set_crew_apresentation, only: [:show, :edit, :update, :destroy]

  # GET /crew/apresentations
  # GET /crew/apresentations.json
  def index
    @crew_apresentations = Crew::Apresentation.all
  end

  # GET /crew/apresentations/1
  # GET /crew/apresentations/1.json
  def show
  end

  # GET /crew/apresentations/new
  def new
    @crew_apresentation = Crew::Apresentation.new
  end

  # GET /crew/apresentations/1/edit
  def edit
  end

  # POST /crew/apresentations
  # POST /crew/apresentations.json
  def create
    @crew_apresentation = Crew::Apresentation.new(crew_apresentation_params)

    respond_to do |format|
      if @crew_apresentation.save
        format.html { redirect_to @crew_apresentation, notice: 'Apresentation was successfully created.' }
        format.json { render :show, status: :created, location: @crew_apresentation }
      else
        format.html { render :new }
        format.json { render json: @crew_apresentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/apresentations/1
  # PATCH/PUT /crew/apresentations/1.json
  def update
    respond_to do |format|
      if @crew_apresentation.update(crew_apresentation_params)
        format.html { redirect_to @crew_apresentation, notice: 'Apresentation was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_apresentation }
      else
        format.html { render :edit }
        format.json { render json: @crew_apresentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/apresentations/1
  # DELETE /crew/apresentations/1.json
  def destroy
    @crew_apresentation.destroy
    respond_to do |format|
      format.html { redirect_to crew_apresentations_url, notice: 'Apresentation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_apresentation
      @crew_apresentation = Crew::Apresentation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_apresentation_params
      params.require(:crew_apresentation).permit(:title, :description, :photo)
    end
end
