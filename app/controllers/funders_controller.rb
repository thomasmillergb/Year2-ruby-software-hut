class FundersController < ApplicationController
  before_action :set_funder, only: [:show, :edit, :update, :destroy]

  # GET /funders
  def index
    @funders = Funder.all
  end

  # GET /funders/1
  def show
  end

  # GET /funders/new
  def new
    @funder = Funder.new
   # @funder = Funder.find(params[:id])
@options = Type.find(:all, 
   :order => "name").
   collect do |s|
      [s.name, s.id]
   end
  end

  # GET /funders/1/edit
  def edit
   @funder = Funnder.new  
   @options = Type.find(:all, :order => "name").
   collect do |s|
	[s.name,s.id]
     end
  end

  # POST /funders
  def create
    @funder = Funder.new(funder_params)

    if @funder.save
      redirect_to @funder, notice: 'Funder was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /funders/1
  def update
    if @funder.update(funder_params)
      redirect_to @funder, notice: 'Funder was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /funders/1
  def destroy
    @funder.destroy
    redirect_to funders_url, notice: 'Funder was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funder
      @funder = Funder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def funder_params
      params.require(:funder).permit(:name, :type_id, :phone, :email)
    end
end
