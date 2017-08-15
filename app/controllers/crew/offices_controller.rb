class Crew::OfficesController < Crew::BaseController
  before_action :set_crew_office, only: [:show, :edit, :update, :destroy]

  # GET /crew/offices
  # GET /crew/offices.json
  def index
    @crew_offices = Office.all
  end

  # GET /crew/offices/1
  # GET /crew/offices/1.json
  def show
  end

  # GET /crew/offices/new
  def new
    @crew_office = Office.new
  end

  # GET /crew/offices/1/edit
  def edit
  end

  # POST /crew/offices
  # POST /crew/offices.json
  def create
    @crew_office = Office.new(crew_office_params)

    respond_to do |format|
      if @crew_office.save
        format.html { redirect_to crew_offices_path, notice: 'Office was successfully created.' }
        format.json { render :show, status: :created, location: @crew_office }
      else
        format.html { render :new }
        format.json { render json: @crew_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/offices/1
  # PATCH/PUT /crew/offices/1.json
  def update
    respond_to do |format|
      if @crew_office.update(crew_office_params)
        format.html { redirect_to crew_offices_path, notice: 'Office was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_office }
      else
        format.html { render :edit }
        format.json { render json: @crew_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/offices/1
  # DELETE /crew/offices/1.json
  def destroy
    @crew_office.destroy
    respond_to do |format|
      format.html { redirect_to crew_offices_url, notice: 'Office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_office
      @crew_office = Office.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_office_params
      params.require(:office).permit(:name, :is_secretary)
    end
end
