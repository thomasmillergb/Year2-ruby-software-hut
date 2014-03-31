class GrantsController < ApplicationController
  before_action :set_grant, only: [:show, :edit, :update, :destroy]

  # GET /grants
  def index
    #params
    @grants = Grant.all
    @project_id = Post.find(params[:[:project_id])
  end

  # GET /grants/1
  def show
  end

  # GET /grants/new
  def new
    @grant = Grant.new
    
    @grant.finalreport = Date.today + 90
    
   
   
    #list of funders
    @options = Funder.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
   end
   #lits of sub catogries
    @options_sub = Grantsub.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
   end
#   @status_options = Status.find(:all).
#  collect do |s|
#     [s.name, s.id]
#  end

  
   
   
  end

  # GET /grants/1/edit
  def edit

    @grant = Grant.new
    @options = Funder.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
   end
 
  end

  # POST /grants
  def create
    @grant = Grant.new(grant_params)
    @grant.status = 0
    
if @grant.save
      
   @project = Project.new 
   @project.grant_id = @grant.id
   @project.save
      redirect_to @grant, notice: 'P was successfully created.'
    else
      render action: 'new'
   
    end
   
      
  end

  # PATCH/PUT /grants/1
  def update
    if @grant.update(grant_params)
      redirect_to @grant, notice: 'Grant was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /grants/1
  def destroy
    @grant.destroy
    redirect_to grants_url, notice: 'Grant was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grant
      @grant = Grant.find(params[:id])
    end
   
    # Only allow a trusted parameter "white list" through.
    def grant_params
      params.require(:grant).permit(:name, :start, :deadline, :status, :funder_id, :code, :awarded_to,:finalreport, :grantsub_id)
  end
end
