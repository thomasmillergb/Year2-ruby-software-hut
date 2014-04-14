class ProjectcatsController < ApplicationController
  before_action :set_projectcat, only: [:show, :edit, :update, :destroy]

  # GET /projectcats
  def index
    @projectcats = Projectcat.all
  end

  # GET /projectcats/1
  def show
  end

  # GET /projectcats/new
  def new
    @projectcat = Projectcat.new
  end

  # GET /projectcats/1/edit
  def edit
  end

  # POST /projectcats
  def create
    @projectcat = Projectcat.new(projectcat_params)

    if @projectcat.save
      redirect_to @projectcat, notice: 'Projectcat was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /projectcats/1
  def update
    if @projectcat.update(projectcat_params)
      redirect_to @projectcat, notice: 'Projectcat was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /projectcats/1
  def destroy
    @projectcat.destroy
    redirect_to projectcats_url, notice: 'Projectcat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectcat
      @projectcat = Projectcat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def projectcat_params
      params.require(:projectcat).permit(:name)
    end
end
