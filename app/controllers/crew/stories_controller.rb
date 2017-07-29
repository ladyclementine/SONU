class Crew::StoriesController < Crew::BaseController
  before_action :set_crew_story, only: [:show, :edit, :update, :destroy]

  # GET /crew/stories
  # GET /crew/stories.json
  def index
    @crew_stories = Crew::Story.all
  end

  # GET /crew/stories/1
  # GET /crew/stories/1.json
  def show
  end

  # GET /crew/stories/new
  def new
    @crew_story = Crew::Story.new
  end

  # GET /crew/stories/1/edit
  def edit
  end

  # POST /crew/stories
  # POST /crew/stories.json
  def create
    @crew_story = Crew::Story.new(crew_story_params)

    respond_to do |format|
      if @crew_story.save
        format.html { redirect_to @crew_story, notice: 'Story was successfully created.' }
        format.json { render :show, status: :created, location: @crew_story }
      else
        format.html { render :new }
        format.json { render json: @crew_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/stories/1
  # PATCH/PUT /crew/stories/1.json
  def update
    respond_to do |format|
      if @crew_story.update(crew_story_params)
        format.html { redirect_to @crew_story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_story }
      else
        format.html { render :edit }
        format.json { render json: @crew_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/stories/1
  # DELETE /crew/stories/1.json
  def destroy
    @crew_story.destroy
    respond_to do |format|
      format.html { redirect_to crew_stories_url, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_story
      @crew_story = Crew::Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_story_params
      params.require(:crew_story).permit(:title, :description)
    end
end
