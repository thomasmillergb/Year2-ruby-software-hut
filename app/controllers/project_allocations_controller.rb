class ProjectAllocationsController < ApplicationController
  before_action :set_project_allocation, only: [:show, :edit, :update, :destroy]

  # GET /project_allocations
  def index
    @project_allocations = ProjectAllocation.all
  end

  # GET /project_allocations/1
  def show
  end

  # GET /project_allocations/new
  def new
    @project_allocation = ProjectAllocation.new
  end

  # GET /project_allocations/1/edit
  def edit
  end

  # POST /project_allocations
  def create
    @project_allocation = ProjectAllocation.new(project_allocation_params)

    if @project_allocation.save
      redirect_to @project_allocation, notice: 'Project allocation was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /project_allocations/1
  def update
    if @project_allocation.update(project_allocation_params)
      redirect_to @project_allocation, notice: 'Project allocation was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /project_allocations/1
  def destroy
    @project_allocation.destroy
    redirect_to project_allocations_url, notice: 'Project allocation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_allocation
      @project_allocation = ProjectAllocation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_allocation_params
      params.require(:project_allocation).permit(:project_id, :user_id)
    end
end
