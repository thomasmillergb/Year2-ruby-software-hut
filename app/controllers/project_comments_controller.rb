class ProjectCommentsController < ApplicationController
  before_action :set_project_comment, only: [:show, :edit, :update, :destroy]

  # GET /project_comments
  def index
    @project_comments = ProjectComment.all
  end

  # GET /project_comments/1
  def show
  end

  # GET /project_comments/new
  def new
    @project_comment = ProjectComment.new
#    @project_comment.project_id = @project_id.id
   # @project_id =Projec_id])
  end

  # GET /project_comments/1/edit
  def edit
  end

  # POST /project_comments
  def create
     @id=  params[:project_id]
       
     @project_comment= ProjectComment.new(project_comment_params)
    @project_comment.created_at = DateTime.now
    @project_comment.user_id = 1
    if @project_comment.save
      redirect_to tasks_path(:project_id => @project_comment.project_id ), notice: 'Comment was successfully posted.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /project_comments/1
  def update
    if @project_comment.update(project_comment_params)
      redirect_to @project_comment, notice: 'Project comment was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /project_comments/1
  def destroy
    @project_comment.destroy
    redirect_to project_comments_url, notice: 'Project comment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_comment
      @project_comment = ProjectComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_comment_params
      params.require(:project_comment).permit(:name, :comment,:project_id)
    end
end

