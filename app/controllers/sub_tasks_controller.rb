class SubTasksController < ApplicationController
  before_action :set_sub_task, only: [:show, :edit, :update, :destroy]

  # GET /sub_tasks
  def index
    @sub_tasks = SubTask.all
    @task_comments = TaskComment.all
    @users = User.all
    @task_comment = TaskComment.new
    @task_id = params[:id]
#new way to do error handling      
 

@task_id = Task.find_by_id(params[:id])

     redirect_to(errors_path , :notice => 'Record not fund') unless @task_id
 end

  # GET /sub_tasks/1
  def show
  end


  def edit_multiple

   if params[:multiple]
  
     @grants = SubTask.find(params[:task_ids])
   render action:  'edit_multiple'


elsif params[:individual]

@a= params[:name]
     @grants = SubTask.find(params[:task_ids])
   render action: 'edit_individual'
else
@a = params[:id]

#   render action:  'test'

end
end
def test

end
  #T /sub_tasks/new
  def new
    @sub_task = SubTask.new
@task_id = Task.find_by_id(params[:id])

  end
  def status

    @sub_task = SubTask.find(params[:id])
    @id = params[:id]
  end

  # GET /sub_tasks/1/edit
  def edit
  end

  # POST /sub_tasks
  def create
    @sub_task = SubTask.new(sub_task_params)
    @sub_task.status = 0 
    if @sub_task.save
      redirect_to sub_tasks_path(:id => @sub_task.task_id), notice: 'Sub task was successfully created.'
    else
      render action: 'new'
    end
  end

  def update_individual
 @grants = SubTask.update(params[:grants].keys, params[:grants].values).reject { |p| p.errors.empty? }
  if @grants.empty?
    redirect_to root_path, notice: 'Updated Successful'
  else
    render :action => "edit_individual"
  end

  end

  def update_multiple
 
  @grants = SubTask.find(params[:grant_ids])
  for grant in @grants
    if !grant.update(grant_params)
      redirect_to root_path, notice: 'Updated not Successful'
    
    end
   end
 
    redirect_to sub_tasks_path(:id => grant.task_id), notice: 'Updated Successful'
 
 end

  # PATCH/PUT /sub_tasks/1
  def update
    if @sub_task.update(sub_task_params)

      redirect_to sub_tasks_path(:id => @sub_task.task_id), notice: 'Sub task was successfully created.'
    else
      render action: 'edit'
    end
  end

  def test
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
      params.require(:sub_task).permit(:task_id, :name, :description, :enddate,:status)
    end
    def grant_params
      params.require(:grant).permit(:task_id, :name, :description, :enddate,:status)
    end

end
