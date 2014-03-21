class ShipsSubsController < ApplicationController
  before_action :set_ships_sub, only: [:show, :edit, :update, :destroy]

  # GET /ships_subs
  def index
    @ships_subs = ShipsSub.all
  end

  # GET /ships_subs/1
  def show
  end

  # GET /ships_subs/new
  def new
    @ships_sub = ShipsSub.new
  end

  # GET /ships_subs/1/edit
  def edit
  end

  # POST /ships_subs
  def create
    @ships_sub = ShipsSub.new(ships_sub_params)

    if @ships_sub.save
      redirect_to @ships_sub, notice: 'Ships sub was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /ships_subs/1
  def update
    if @ships_sub.update(ships_sub_params)
      redirect_to @ships_sub, notice: 'Ships sub was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /ships_subs/1
  def destroy
    @ships_sub.destroy
    redirect_to ships_subs_url, notice: 'Ships sub was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ships_sub
      @ships_sub = ShipsSub.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ships_sub_params
      params.require(:ships_sub).permit(:name)
    end
end
