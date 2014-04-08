class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  def index
    @projects = Project.all
    @grants = Grant.all
    @studentships = Studentship.all
      @project_comments = ProjectComment.all
@grane = Grant.new
 @project_comment = Project.new

  end

  # GET /projects/1
  def show
  end
  def status
   
    @grant = Grant.find(params[:id])
    @id = params[:id]
  end
#bag code cannot be bothered with ifs
  def statuss
   
    @grant = Studentship.find(params[:id])
    @id = params[:id]
  end
  def edit_multiple
   
   if params[:multiple]
   
     @grants = Grant.find(params[:grant_ids])
   @options_sub = list
   @options = oplist
   render action:  'edit_multiple'
 

elsif params[:individual]

@a= params[:name]   
     @grants = Studentship.find(params[:grant_ids])
   @options_sub = list
   @options = oplist
   render action: 'edit_individual'
elsif params[:multiples]
   
     @grants = Studentship.find(params[:grant_ids])
       @options = Shipssub.find(:all,
   :order => "name").
   collect do |s|
      [s.name, s.id]
   end

   render action:  'edit_multiples'
 

elsif params[:individuals]

@a= params[:name]   
     @options = Shipssub.find(:all,
   :order => "name").
   collect do |s|
      [s.name, s.id]
   end

     @grants = Studentship.find(params[:grant_ids])
   render action: 'edit_individuals'
end
  end
  def update_individual
  @grants = Grant.update(params[:grants].keys, params[:grants].values).reject { |p| p.errors.empty? }
  if @products.empty?
    flash[:notice] = "Products updated"
    redirect_to products_url
  else
    render :action => "edit_individual"
  end
  end
  def update_multiple
    @grants = Grant.find(params[:grant_ids])
    @grants.each do |grant|
      grant.update_attributes!(params[:grant].reject { |k,v| v.blank? })
    end
    flash[:notice] = "Updated products!"
    redirect_to products_path
  end
  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  def edits
  end
  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projjjj_url, notice: 'Project was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      redirect_to asd, notice: 'Project was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
    def list

    
     return @options_sub = Grantsub.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
   end 
   end
   def oplist
   return  @options = Funder.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
   end

   
   end
    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:grant_id, :studentship_id)
    end
end
