class Crew::BigSonuComiteesController < Crew::BaseController
  before_action :set_crew_big_sonu_comitee, only: [:show, :edit, :update, :destroy]

  # GET /crew/big_sonu_comitees
  # GET /crew/big_sonu_comitees.json
  def index
    @crew_big_sonu_comitees = Crew::BigSonuComitee.all
  end

  # GET /crew/big_sonu_comitees/1
  # GET /crew/big_sonu_comitees/1.json
  def show
  end

  # GET /crew/big_sonu_comitees/new
  def new
    @crew_big_sonu_comitee = Crew::BigSonuComitee.new
  end

  # GET /crew/big_sonu_comitees/1/edit
  def edit
  end

  # POST /crew/big_sonu_comitees
  # POST /crew/big_sonu_comitees.json
  def create
    @crew_big_sonu_comitee = Crew::BigSonuComitee.new(crew_big_sonu_comitee_params)

    respond_to do |format|
      if @crew_big_sonu_comitee.save
        format.html { redirect_to @crew_big_sonu_comitee, notice: 'Big sonu comitee was successfully created.' }
        format.json { render :show, status: :created, location: @crew_big_sonu_comitee }
      else
        format.html { render :new }
        format.json { render json: @crew_big_sonu_comitee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/big_sonu_comitees/1
  # PATCH/PUT /crew/big_sonu_comitees/1.json
  def update
    respond_to do |format|
      if @crew_big_sonu_comitee.update(crew_big_sonu_comitee_params)
        format.html { redirect_to @crew_big_sonu_comitee, notice: 'Big sonu comitee was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_big_sonu_comitee }
      else
        format.html { render :edit }
        format.json { render json: @crew_big_sonu_comitee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/big_sonu_comitees/1
  # DELETE /crew/big_sonu_comitees/1.json
  def destroy
    @crew_big_sonu_comitee.destroy
    respond_to do |format|
      format.html { redirect_to crew_big_sonu_comitees_url, notice: 'Big sonu comitee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_big_sonu_comitee
      @crew_big_sonu_comitee = Crew::BigSonuComitee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_big_sonu_comitee_params
      params.require(:crew_big_sonu_comitee).permit(:name, :description, :photo)
    end
end
