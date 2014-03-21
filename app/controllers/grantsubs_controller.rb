class GrantsubsController < ApplicationController
  before_action :set_grantsub, only: [:show, :edit, :update, :destroy]

  # GET /grantsubs
  def index
    @grantsubs = Grantsub.all
  end

  # GET /grantsubs/1
  def show
  end

  # GET /grantsubs/new
  def new
    @grantsub = Grantsub.new
  end

  # GET /grantsubs/1/edit
  def edit
  end

  # POST /grantsubs
  def create
    @grantsub = Grantsub.new(grantsub_params)

    if @grantsub.save
      redirect_to @grantsub, notice: 'Grantsub was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /grantsubs/1
  def update
    if @grantsub.update(grantsub_params)
      redirect_to @grantsub, notice: 'Grantsub was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /grantsubs/1
  def destroy
    @grantsub.destroy
    redirect_to grantsubs_url, notice: 'Grantsub was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grantsub
      @grantsub = Grantsub.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grantsub_params
      params.require(:grantsub).permit(:name)
    end
end
