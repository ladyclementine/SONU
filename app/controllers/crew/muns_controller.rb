class Crew::MunsController < Crew::BaseController
  before_action :set_crew_mun, only: [:show, :edit, :update, :destroy]

  # GET /crew/muns
  # GET /crew/muns.json
  def index
    @crew_muns = Crew::Mun.all
  end

  # GET /crew/muns/1
  # GET /crew/muns/1.json
  def show
  end

  # GET /crew/muns/new
  def new
    @crew_mun = Crew::Mun.new
  end

  # GET /crew/muns/1/edit
  def edit
  end

  # POST /crew/muns
  # POST /crew/muns.json
  def create
    @crew_mun = Crew::Mun.new(crew_mun_params)

    respond_to do |format|
      if @crew_mun.save
        format.html { redirect_to @crew_mun, notice: 'Mun was successfully created.' }
        format.json { render :show, status: :created, location: @crew_mun }
      else
        format.html { render :new }
        format.json { render json: @crew_mun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/muns/1
  # PATCH/PUT /crew/muns/1.json
  def update
    respond_to do |format|
      if @crew_mun.update(crew_mun_params)
        format.html { redirect_to @crew_mun, notice: 'Mun was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_mun }
      else
        format.html { render :edit }
        format.json { render json: @crew_mun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/muns/1
  # DELETE /crew/muns/1.json
  def destroy
    @crew_mun.destroy
    respond_to do |format|
      format.html { redirect_to crew_muns_url, notice: 'Mun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_mun
      @crew_mun = Crew::Mun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_mun_params
      params.require(:crew_mun).permit(:title, :description)
    end
end
