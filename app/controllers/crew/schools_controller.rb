class Crew::SchoolsController < Crew::BaseController
  before_action :set_crew_school, only: [:remove_photo, :show, :edit, :update, :destroy]

  # GET /crew/schools
  # GET /crew/schools.json
  def index
    @crew_schools = Crew::School.all
  end
  
  def remove_photo
    @crew_school.remove_photo.destroy
   end 
  # GET /crew/schools/1
  # GET /crew/schools/1.json
  def show
  end

  # GET /crew/schools/new
  def new
    @crew_school = Crew::School.new
  end

  # GET /crew/schools/1/edit
  def edit
  end

  # POST /crew/schools
  # POST /crew/schools.json
  def create
    @crew_school = Crew::School.new(crew_school_params)

    respond_to do |format|
      if @crew_school.save
        format.html { redirect_to @crew_school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @crew_school }
      else
        format.html { render :new }
        format.json { render json: @crew_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/schools/1
  # PATCH/PUT /crew/schools/1.json
  def update
    respond_to do |format|
      if @crew_school.update(crew_school_params)
        format.html { redirect_to @crew_school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_school }
      else
        format.html { render :edit }
        format.json { render json: @crew_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/schools/1
  # DELETE /crew/schools/1.json
  def destroy
    @crew_school.destroy
    respond_to do |format|
      format.html { redirect_to crew_schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_school
      @crew_school = Crew::School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_school_params
      params.require(:crew_school).permit(:title, :description, :photo)
    end
end
