class Crew::BlogsController < Crew::BaseController
  before_action :set_crew_blog, only: [:show, :edit, :update, :destroy]

  # GET /crew/blogs
  # GET /crew/blogs.json
  def index
    @crew_blogs = Crew::Blog.all
  end

  # GET /crew/blogs/1
  # GET /crew/blogs/1.json
  def show
  end

  # GET /crew/blogs/new
  def new
    @crew_blog = Crew::Blog.new
  end

  # GET /crew/blogs/1/edit
  def edit
  end

  # POST /crew/blogs
  # POST /crew/blogs.json
  def create
    @crew_blog = Crew::Blog.new(crew_blog_params)

    respond_to do |format|
      if @crew_blog.save
        format.html { redirect_to @crew_blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @crew_blog }
      else
        format.html { render :new }
        format.json { render json: @crew_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew/blogs/1
  # PATCH/PUT /crew/blogs/1.json
  def update
    respond_to do |format|
      if @crew_blog.update(crew_blog_params)
        format.html { redirect_to @crew_blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @crew_blog }
      else
        format.html { render :edit }
        format.json { render json: @crew_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew/blogs/1
  # DELETE /crew/blogs/1.json
  def destroy
    @crew_blog.destroy
    respond_to do |format|
      format.html { redirect_to crew_blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_blog
      @crew_blog = Crew::Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crew_blog_params
      params.require(:crew_blog).permit(:title, :introdution, :description, :photo, :date)
    end
end
