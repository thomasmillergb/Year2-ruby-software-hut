class ShipssubsController < ApplicationController
  before_action :set_shipssub, only: [:show, :edit, :update, :destroy]

  # GET /shipssubs
  def index
    @shipssubs = Shipssub.all
  end

  # GET /shipssubs/1
  def show
  end

  # GET /shipssubs/new
  def new
    @shipssub = Shipssub.new
  end

  # GET /shipssubs/1/edit
  def edit
  end

  # POST /shipssubs
  def create
    @shipssub = Shipssub.new(shipssub_params)

    if @shipssub.save
      redirect_to @shipssub, notice: 'Shipssub was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /shipssubs/1
  def update
    if @shipssub.update(shipssub_params)
      redirect_to @shipssub, notice: 'Shipssub was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /shipssubs/1
  def destroy
    @shipssub.destroy
    redirect_to shipssubs_url, notice: 'Shipssub was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipssub
      @shipssub = Shipssub.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shipssub_params
      params.require(:shipssub).permit(:name)
    end
end
