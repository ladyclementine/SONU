class Crew::SecretariesController < Crew::BaseController
  before_action :set_crew_secretary, only: [:show, :edit, :update, :destroy]

  # GET /crew/secretaries
  # GET /crew/secretaries.json
  def index
    @crew_secretaries = Crew::Secretary.all
  end

  # GET /crew/secretaries/1
  # GET /crew/secretaries/1.json
  def show
  end

  # GET /crew/secretaries/new
  def new
    @crew_secretary = Crew::Secretary.new

  end

  # GET /crew/secretaries/1/edit
  def edit
  end

  # POST /crew/secretaries
  # POST /crew/secretaries.json
  def create
    @crew_secretary = Crew::Secretary.new(crew_secretary_params)
    
    respond_to do |format|
      if @crew_secretary.save
        format.html { redirect_to @crew_secretary, notice: 'Secretary was successfully created.' }
        format.json { render :show, status: :created, location: @crew_secretary }
      else
        format.html { render :new }
        format.json { render json: @crew_secretary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/secretaries/1
  # PATCH/PUT /crew/secretaries/1.json
  def update
    respond_to do |format|
      if @crew_secretary.update(crew_secretary_params)
        format.html { redirect_to @crew_secretary, notice: 'Secretary was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_secretary }
      else
        format.html { render :edit }
        format.json { render json: @crew_secretary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/secretaries/1
  # DELETE /crew/secretaries/1.json
  def destroy
    @crew_secretary.destroy
    respond_to do |format|
      format.html { redirect_to crew_secretaries_url, notice: 'Secretary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_secretary
      @crew_secretary = Crew::Secretary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_secretary_params
      params.require(:crew_secretary).permit(:office, :name, :description, :photo)
    end
end
