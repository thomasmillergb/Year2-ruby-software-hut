class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  
  # GET /tasks
  def index
    @tasks = Task.all
    @project_comments = ProjectComment.all
    @users = User.all
    begin
      @project_id =Project.find( params[:project_id])
    rescue
      redirect_to errors_path, notice: 'The project was not found.'
    
    end
    @project_comment = ProjectComment.new

   #@ get user seession id
  end

  # GET /tasks/1
  def show
  end
  def edit_bulk
if params[:arc]
@tasks = Task.find(params[:task_ids])


 for grant in @tasks
   grant.archive = true
   
 if !grant.save
    redirect_to tasks_path(:project_id => grant.project_id), notice: 'Archive not Successful'
 end
end
#
    redirect_to tasks_path(:project_id => grant.project_id),notice: 'Archive Successful'
elsif params[:stats]

@tasks = Task.find(params[:task_ids])

 for grant in @tasks
   grant.status = params[:status]
 if !grant.save
    redirect_to tasks_path(:project_id => grant.project_id), notice: 'Updated not Successful'
 end
end
#
    redirect_to tasks_path(:project_id => grant.project_id), notice: 'Updated Successful'

  end
end
  # GET /tasks/new
  def new
    @task = Task.new
     @project_id =Project.find( params[:project_id])

  end
  def status
    @task = Task.find(params[:id])
    @id = params[:id]

  end
  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create

    @task = Task.new(task_params)
    @task.archive = false
    @task.status = 1 
    if @task.save
       redirect_to tasks_path(:project_id => @task.project_id ), notice: 'Task was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to tasks_path(:project_id =>@task.project_id), notice: 'Task was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:name, :description, :startdate, :enddate, :status, :project_id, :archive)
    end
end
