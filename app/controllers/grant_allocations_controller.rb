class GrantAllocationsController < ApplicationController
  before_action :set_grant_allocation, only: [:show, :edit, :update, :destroy]

  # GET /grant_allocations
  def index
    @grant_allocations = GrantAllocation.all
  end

  # GET /grant_allocations/1
  def show
  end

  # GET /grant_allocations/new
  def new
    @grant_allocation = GrantAllocation.new
  end

  # GET /grant_allocations/1/edit
  def edit
  end

  # POST /grant_allocations
  def create
    @grant_allocation = GrantAllocation.new(grant_allocation_params)

    if @grant_allocation.save
      redirect_to @grant_allocation, notice: 'Grant allocation was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /grant_allocations/1
  def update
    if @grant_allocation.update(grant_allocation_params)
      redirect_to @grant_allocation, notice: 'Grant allocation was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /grant_allocations/1
  def destroy
    @grant_allocation.destroy
    redirect_to grant_allocations_url, notice: 'Grant allocation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grant_allocation
      @grant_allocation = GrantAllocation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grant_allocation_params
      params.require(:grant_allocation).permit(:grant_id, :user_id)
    end
end
