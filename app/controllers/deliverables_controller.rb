class DeliverablesController < ApplicationController
  before_action :set_deliverable, only: [:show, :edit, :update, :destroy]

  # GET /deliverables
  def index
    @deliverables = Deliverable.all
  end

  # GET /deliverables/1
  def show
  end

  # GET /deliverables/new
  def new
    @deliverable = Deliverable.new
  end

  # GET /deliverables/1/edit
  def edit
  end

  # POST /deliverables
  def create
    @deliverable = Deliverable.new(deliverable_params)

    if @deliverable.save
      redirect_to @deliverable, notice: 'Deliverable was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /deliverables/1
  def update
    if @deliverable.update(deliverable_params)
      redirect_to @deliverable, notice: 'Deliverable was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /deliverables/1
  def destroy
    @deliverable.destroy
    redirect_to deliverables_url, notice: 'Deliverable was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deliverable
      @deliverable = Deliverable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deliverable_params
      params.require(:deliverable).permit(:grants_id, :name, :description, :start, :deadline, :status)
    end
end
