class GrantsController < ApplicationController

  before_action :set_grant, only: [:show, :edit, :update, :destroy]

  # GET /grants
  def index
    
    @grants = Grant.all
#    @project_id = Post.find(params[:project_id])
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
   @cat_options = cat
  
   
   
  end
  
  # GET /grants/1/edit
  def edit

    
    @options = list
 
   #lits of sub catogries
    @options_sub = Grantsub.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
   end
   @cat_options = cat
  end
  def edit_individual

    
   #lits of sub catogries
    @options_sub = Grantsub.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
   end
   @options = list
   @grants = Grant.find(params[:grant_ids])
    
  end

  def update_individual
 @grants = Grant.update(params[:grants].keys, params[:grants].values).reject { |p| p.errors.empty? }
  if @grants.empty?
    redirect_to root_path, notice: 'Updated Successful'
  else
    render :action => "edit_individual"
  end

  end
 def test
 end
 def update_multiple
  
 @grants = Grant.find(params[:grant_ids])

 for grant in @grants  
 if !grant.update(grant_params)
    redirect_to root_path, notice: 'Updated not Successful'
 end
end
#
    redirect_to root_path, notice: 'Updated Successful'

end

  # POST /grants
  def create
    @grant = Grant.new(grant_params)
    @grant.status = 1
    @grant.archive = false
if @grant.save
      
   @project = Project.new 
   @project.grant_id = @grant.id
   @project.save
      redirect_to tasks_path(:project_id => @project.id ), notice: 'Grant has been successfully added'
    else
      render action: 'new'
   
    end
   
      
  end

  # PATCH/PUT /grants/1
  def update
    if @grant.update(grant_params)
  redirect_to root_path, notice: 'Updated Successful'
   
 else
      render action: 'edit'
    end
  end

  def updates
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
    def cat

    options = Projectcat.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
      end
    return options
    end
    def list

    
    @options = Funder.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
      end
    end 
    # Only allow a trusted parameter "white list" through.
    def grant_params
      params.require(:grant).permit(:name, :start, :deadline, :status, :funder_id, :code, :awarded_to,:finalreport, :grantsub_id, :archive)
    end

end
