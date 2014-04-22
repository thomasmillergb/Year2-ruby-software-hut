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
@status = statusbox
  end

  # GET /projects/1
  def show
  end
  def status
   
@status = statusbox
    @grant = Grant.find(params[:id])
    @id = params[:id]
  end
#bag code cannot be bothered with ifs
  def statuss
   
@status = statusbox
    @grant = Studentship.find(params[:id])
    @id = params[:id]
  end
  def edit_multiple
   @cat_options = cat
 
@status = statusbox
   if params[:multiple]
   
     @grants = Grant.find(params[:grant_ids])
   @options_sub = list
   @options = oplist
   render action:  'edit_multiple'
 
elsif params[:archive]
@grants = Grant.find(params[:grant_ids])

 for grant in @grants
   grant.archive = true
 if !grant.save
    redirect_to root_path, notice: 'Updated not Successful'
 end
end
#
    redirect_to root_path, notice: 'Updated Successful'
elsif params[:stat]

@grants = Grant.find(params[:grant_ids])

 for grant in @grants
   grant.status = params[:status]
 if !grant.save
    redirect_to root_path, notice: 'Updated not Successful'
 end
end
#
    redirect_to root_path, notice: 'Updated Successful'

elsif params[:arc]
@grants = Studentship.find(params[:grant_ids])


 for grant in @grants
   grant.archive = true
 if !grant.save
    redirect_to root_path, notice: 'Archive not Successful'
 end
end
#
    redirect_to root_path, notice: 'Archive Successful'
elsif params[:stats]

@grants = Studentship.find(params[:grant_ids])

 for grant in @grants
   grant.status = params[:status]
 if !grant.save
    redirect_to root_path, notice: 'Updated not Successful'
 end
end
#
    redirect_to root_path, notice: 'Updated Successful'
elsif params[:individual]
     @grants = Grant.find(params[:grant_ids])
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
    def cat

    options = Projectcat.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
      end
    return options
    end
 
    def statusbox

    options = Status.find(:all,
     :order => "name").
   collect do |s|
      [s.name, s.id]
      end
    return options
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:grant_id, :studentship_id)
    end
end
