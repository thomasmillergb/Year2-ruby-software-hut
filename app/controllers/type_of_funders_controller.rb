class TypeOfFundersController < ApplicationController
  before_action :set_type_of_funder, only: [:show, :edit, :update, :destroy]

  # GET /type_of_funders
  def index
    @type_of_funders = TypeOfFunder.all
  end

  # GET /type_of_funders/1
  def show
  end

  # GET /type_of_funders/new
  def new
    @type_of_funder = TypeOfFunder.new
  end

  # GET /type_of_funders/1/edit
  def edit
  end

  # POST /type_of_funders
  def create
    @type_of_funder = TypeOfFunder.new(type_of_funder_params)

    if @type_of_funder.save
      redirect_to @type_of_funder, notice: 'Type of funder was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /type_of_funders/1
  def update
    if @type_of_funder.update(type_of_funder_params)
      redirect_to @type_of_funder, notice: 'Type of funder was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /type_of_funders/1
  def destroy
    @type_of_funder.destroy
    redirect_to type_of_funders_url, notice: 'Type of funder was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_funder
      @type_of_funder = TypeOfFunder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def type_of_funder_params
      params.require(:type_of_funder).permit(:type)
    end
end
