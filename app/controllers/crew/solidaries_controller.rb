class Crew::SolidariesController < Crew::BaseController
  before_action :set_crew_solidary, only: [:show, :edit, :update, :destroy]

  # GET /crew/solidaries
  # GET /crew/solidaries.json
  def index
    @crew_solidaries = Crew::Solidary.all
  end

  # GET /crew/solidaries/1
  # GET /crew/solidaries/1.json
  def show
  end

  # GET /crew/solidaries/new
  def new
    @crew_solidary = Crew::Solidary.new
  end

  # GET /crew/solidaries/1/edit
  def edit
  end

  # POST /crew/solidaries
  # POST /crew/solidaries.json
  def create
    @crew_solidary = Crew::Solidary.new(crew_solidary_params)

    respond_to do |format|
      if @crew_solidary.save
        format.html { redirect_to @crew_solidary, notice: 'Solidary was successfully created.' }
        format.json { render :show, status: :created, location: @crew_solidary }
      else
        format.html { render :new }
        format.json { render json: @crew_solidary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/solidaries/1
  # PATCH/PUT /crew/solidaries/1.json
  def update
    respond_to do |format|
      if @crew_solidary.update(crew_solidary_params)
        format.html { redirect_to @crew_solidary, notice: 'Solidary was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_solidary }
      else
        format.html { render :edit }
        format.json { render json: @crew_solidary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/solidaries/1
  # DELETE /crew/solidaries/1.json
  def destroy
    @crew_solidary.destroy
    respond_to do |format|
      format.html { redirect_to crew_solidaries_url, notice: 'Solidary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_solidary
      @crew_solidary = Crew::Solidary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_solidary_params
      params.require(:crew_solidary).permit(:title, :description, :photo)
    end
end
