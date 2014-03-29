class SubTasksController < ApplicationController
  before_action :set_sub_task, only: [:show, :edit, :update, :destroy]

  # GET /sub_tasks
  def index
    @sub_tasks = SubTask.all
    @project_comments = TaskComment.all
  end

  # GET /sub_tasks/1
  def show
  end

  # GET /sub_tasks/new
  def new
    @sub_task = SubTask.new
  end

  # GET /sub_tasks/1/edit
  def edit
  end

  # POST /sub_tasks
  def create
    @sub_task = SubTask.new(sub_task_params)

    if @sub_task.save
      redirect_to @sub_task, notice: 'Sub task was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /sub_tasks/1
  def update
    if @sub_task.update(sub_task_params)
      redirect_to @sub_task, notice: 'Sub task was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /sub_tasks/1
  def destroy
    @sub_task.destroy
    redirect_to sub_tasks_url, notice: 'Sub task was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_task
      @sub_task = SubTask.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sub_task_params
      params.require(:sub_task).permit(:name, :description, :enddate)
    end
end
