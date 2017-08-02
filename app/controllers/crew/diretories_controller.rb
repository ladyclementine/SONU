class Crew::DiretoriesController < Crew::BaseController
  before_action :set_crew_diretory, only: [:show, :edit, :update, :destroy]

  # GET /crew/diretories
  # GET /crew/diretories.json
  def index
    @crew_diretories = Crew::Diretory.all
  end

  # GET /crew/diretories/1
  # GET /crew/diretories/1.json
  def show
  end

  # GET /crew/diretories/new
  def new
    @crew_diretory = Crew::Diretory.new
  end

  # GET /crew/diretories/1/edit
  def edit
  end

  # POST /crew/diretories
  # POST /crew/diretories.json
  def create
    @crew_diretory = Crew::Diretory.new(crew_diretory_params)

    respond_to do |format|
      if @crew_diretory.save
        format.html { redirect_to @crew_diretory, notice: 'Diretory was successfully created.' }
        format.json { render :show, status: :created, location: @crew_diretory }
      else
        format.html { render :new }
        format.json { render json: @crew_diretory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/diretories/1
  # PATCH/PUT /crew/diretories/1.json
  def update
    respond_to do |format|
      if @crew_diretory.update(crew_diretory_params)
        format.html { redirect_to @crew_diretory, notice: 'Diretory was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_diretory }
      else
        format.html { render :edit }
        format.json { render json: @crew_diretory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/diretories/1
  # DELETE /crew/diretories/1.json
  def destroy
    @crew_diretory.destroy
    respond_to do |format|
      format.html { redirect_to crew_diretories_url, notice: 'Diretory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_diretory
      @crew_diretory = Crew::Diretory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_diretory_params
      params.require(:crew_diretory).permit(:office, :name, :description, :photo)
    end
end
