class Crew::FortalezasController < Crew::BaseController
  before_action :set_crew_fortaleza, only: [:show, :edit, :update, :destroy]

  # GET /crew/fortalezas
  # GET /crew/fortalezas.json
  def index
    @crew_fortalezas = Crew::Fortaleza.all
  end

  # GET /crew/fortalezas/1
  # GET /crew/fortalezas/1.json
  def show
  end

  # GET /crew/fortalezas/new
  def new
    @crew_fortaleza = Crew::Fortaleza.new
  end

  # GET /crew/fortalezas/1/edit
  def edit
  end

  # POST /crew/fortalezas
  # POST /crew/fortalezas.json
  def create
    @crew_fortaleza = Crew::Fortaleza.new(crew_fortaleza_params)

    respond_to do |format|
      if @crew_fortaleza.save
        format.html { redirect_to @crew_fortaleza, notice: 'Fortaleza was successfully created.' }
        format.json { render :show, status: :created, location: @crew_fortaleza }
      else
        format.html { render :new }
        format.json { render json: @crew_fortaleza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/fortalezas/1
  # PATCH/PUT /crew/fortalezas/1.json
  def update
    respond_to do |format|
      if @crew_fortaleza.update(crew_fortaleza_params)
        format.html { redirect_to @crew_fortaleza, notice: 'Fortaleza was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_fortaleza }
      else
        format.html { render :edit }
        format.json { render json: @crew_fortaleza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/fortalezas/1
  # DELETE /crew/fortalezas/1.json
  def destroy
    @crew_fortaleza.destroy
    respond_to do |format|
      format.html { redirect_to crew_fortalezas_url, notice: 'Fortaleza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_fortaleza
      @crew_fortaleza = Crew::Fortaleza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_fortaleza_params
      params.require(:crew_fortaleza).permit(:title, :description, :photo)
    end
end
