class TaskCommentsController < ApplicationController
  before_action :set_task_comment, only: [:show, :edit, :update, :destroy]

  # GET /task_comments
  def index
    @task_comments = TaskComment.all
    @users = User.all
    @task_comment = TaskComment.all
    @project_comment.all
  end

  # GET /task_comments/1
  def show
  end

  # GET /task_comments/new
  def new
    @task_comment = TaskComment.new
  end

  # GET /task_comments/1/edit
  def edit
  end

  # POST /task_comments
  def create
    @task_comment = TaskComment.new(task_comment_params)
    
		#change to seesion id
		@task_comment.user_id = 1
    if @task_comment.save
      redirect_to sub_tasks_path(:id => @task_comment.task_id) , notice: 'Sub Task comment was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /task_comments/1
  def update
    if @task_comment.update(task_comment_params)
      redirect_to @task_comment, notice: 'Task comment was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /task_comments/1
  def destroy
    @task_comment.destroy
    redirect_to task_comments_url, notice: 'Task comment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_comment
      @task_comment = TaskComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_comment_params
      params.require(:task_comment).permit(:name, :comment, :task_id)
    end
end
