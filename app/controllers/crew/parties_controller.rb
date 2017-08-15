class Crew::PartiesController < Crew::BaseController
  before_action :set_crew_party, only: [:show, :edit, :update, :destroy]

  # GET /crew/parties
  # GET /crew/parties.json
  def index
    @crew_parties = Crew::Party.all
  end

  # GET /crew/parties/1
  # GET /crew/parties/1.json
  def show
  end

  # GET /crew/parties/new
  def new
    @crew_party = Crew::Party.new
  end

  # GET /crew/parties/1/edit
  def edit
  end

  # POST /crew/parties
  # POST /crew/parties.json
  def create
    @crew_party = Crew::Party.new(crew_party_params)

    respond_to do |format|
      if @crew_party.save
        format.html { redirect_to @crew_party, notice: 'Party was successfully created.' }
        format.json { render :show, status: :created, location: @crew_party }
      else
        format.html { render :new }
        format.json { render json: @crew_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/parties/1
  # PATCH/PUT /crew/parties/1.json
  def update
    respond_to do |format|
      if @crew_party.update(crew_party_params)
        format.html { redirect_to @crew_party, notice: 'Party was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_party }
      else
        format.html { render :edit }
        format.json { render json: @crew_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/parties/1
  # DELETE /crew/parties/1.json
  def destroy
    @crew_party.destroy
    respond_to do |format|
      format.html { redirect_to crew_parties_url, notice: 'Party was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_party
      @crew_party = Crew::Party.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_party_params
      params.require(:crew_party).permit(:title, :description)
    end
end
