class Crew::PartnersController < Crew::BaseController
  before_action :set_crew_partner, only: [:show, :edit, :update, :destroy]

  # GET /crew/partners
  # GET /crew/partners.json
  def index
    @crew_partners = Crew::Partner.all
  end

  # GET /crew/partners/1
  # GET /crew/partners/1.json
  def show
    @crew_partners = Crew::Partner.all
  end

  # GET /crew/partners/new
  def new
    @crew_partner = Crew::Partner.new
  end

  # GET /crew/partners/1/edit
  def edit
  end

  # POST /crew/partners
  # POST /crew/partners.json
  def create
    @crew_partner = Crew::Partner.new(crew_partner_params)

    respond_to do |format|
      if @crew_partner.save
        format.html { redirect_to @crew_partner, notice: 'Partner was successfully created.' }
        format.json { render :show, status: :created, location: @crew_partner }
      else
        format.html { render :new }
        format.json { render json: @crew_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/partners/1
  # PATCH/PUT /crew/partners/1.json
  def update
    respond_to do |format|
      if @crew_partner.update(crew_partner_params)
        format.html { redirect_to @crew_partner, notice: 'Partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_partner }
      else
        format.html { render :edit }
        format.json { render json: @crew_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/partners/1
  # DELETE /crew/partners/1.json
  def destroy
    @crew_partner.destroy
    respond_to do |format|
      format.html { redirect_to crew_partners_url, notice: 'Partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_partner
      @crew_partner = Crew::Partner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_partner_params
      params.require(:crew_partner).permit(:title, {photos: []})
    end
end
