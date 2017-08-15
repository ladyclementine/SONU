class Crew::BigSonuSchedulesController < Crew::BaseController
  before_action :set_crew_big_sonu_schedule, only: [:show, :edit, :update, :destroy]

  # GET /crew/big_sonu_schedules
  # GET /crew/big_sonu_schedules.json
  def index
    @crew_big_sonu_schedules = Crew::BigSonuSchedule.all
  end

  # GET /crew/big_sonu_schedules/1
  # GET /crew/big_sonu_schedules/1.json
  def show
  end


  # GET /crew/big_sonu_schedules/new
  def new
    @crew_big_sonu_schedule = Crew::BigSonuSchedule.new
  end

  # GET /crew/big_sonu_schedules/1/edit
  def edit
  end

  # POST /crew/big_sonu_schedules
  # POST /crew/big_sonu_schedules.json
  def create
    @crew_big_sonu_schedule = Crew::BigSonuSchedule.new(crew_big_sonu_schedule_params)

    respond_to do |format|
      if @crew_big_sonu_schedule.save
        format.html { redirect_to @crew_big_sonu_schedule, notice: 'Big sonu schedule was successfully created.' }
        format.json { render :show, status: :created, location: @crew_big_sonu_schedule }
      else
        format.html { render :new }
        format.json { render json: @crew_big_sonu_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/big_sonu_schedules/1
  # PATCH/PUT /crew/big_sonu_schedules/1.json
  def update
    respond_to do |format|
      if @crew_big_sonu_schedule.update(crew_big_sonu_schedule_params)
        format.html { redirect_to @crew_big_sonu_schedule, notice: 'Big sonu schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_big_sonu_schedule }
      else
        format.html { render :edit }
        format.json { render json: @crew_big_sonu_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/big_sonu_schedules/1
  # DELETE /crew/big_sonu_schedules/1.json
  def destroy
    @crew_big_sonu_schedule.destroy
    respond_to do |format|
      format.html { redirect_to crew_big_sonu_schedules_url, notice: 'Big sonu schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_big_sonu_schedule
      @crew_big_sonu_schedule = Crew::BigSonuSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_big_sonu_schedule_params
      params.require(:crew_big_sonu_schedule).permit(:activity, :start, :end)
    end
end
