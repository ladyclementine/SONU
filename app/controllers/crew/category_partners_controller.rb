class Crew::CategoryPartnersController < Crew::BaseController
  before_action :set_crew_category_partner, only: [:show, :edit, :update, :destroy]

  # GET /crew/category_partners
  # GET /crew/category_partners.json
  def index
    @crew_category_partners = CategoryPartner.all
  end

  # GET /crew/category_partners/1
  # GET /crew/category_partners/1.json
  def show
  end

  # GET /crew/category_partners/new
  def new
    @crew_category_partner = CategoryPartner.new
  end

  # GET /crew/category_partners/1/edit
  def edit
  end

  # POST /crew/category_partners
  # POST /crew/category_partners.json
  def create
    @crew_category_partner = CategoryPartner.new(crew_category_partner_params)

    respond_to do |format|
      if @crew_category_partner.save
        format.html { redirect_to crew_category_partners_path, notice: 'Category partner was successfully created.' }
        format.json { render :show, status: :created, location: @crew_category_partner }
      else
        format.html { render :new }
        format.json { render json: @crew_category_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/category_partners/1
  # PATCH/PUT /crew/category_partners/1.json
  def update
    respond_to do |format|
      if @crew_category_partner.update(crew_category_partner_params)
        format.html { redirect_to @crew_category_partner, notice: 'Category partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_category_partner }
      else
        format.html { render :edit }
        format.json { render json: @crew_category_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/category_partners/1
  # DELETE /crew/category_partners/1.json
  def destroy
    @crew_category_partner.destroy
    respond_to do |format|
      format.html { redirect_to crew_category_partners_url, notice: 'Category partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_category_partner
      @crew_category_partner = CategoryPartner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_category_partner_params
      params.require(:category_partner).permit(:name)
    end
end
