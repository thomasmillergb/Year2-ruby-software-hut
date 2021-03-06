class StudentshipsController < ApplicationController
  before_action :set_studentship, only: [:show, :edit, :update, :destroy]

  # GET /studentships
  def index
    @studentships = Studentship.all
  end

  # GET /studentships/1
  def show
  end

  # GET /studentships/new
  def new
    @studentship = Studentship.new
     @studentship.fdate = Date.today + 30
     @studentship.sdate = Date.today + 30
     @studentship.tdate = Date.today + 30

     @options = Shipssub.find(:all,
   :order => "name").
   collect do |s|
      [s.name, s.id]
   end

  end
  def update_individual
 @grants = Studentship.update(params[:grants].keys, params[:grants].values).reject { |p| p.errors.empty? }
  if @grants.empty?
    redirect_to root_path, notice: 'Updated Successful'
  else
    render :action => "edit_individual"
  end

  end
 def update_multiple

 @grants = Studentship.find(params[:grant_ids])

 for grant in @grants
 if !grant.update(grant_params)
    redirect_to root_path, notice: 'Updated not Successful'
 end
end
#
    redirect_to root_path, notice: 'Updated Successful'

end

  # GET: /studentships/1/edit
  def edit
     @options = Shipssub.find(:all,
   :order => "name").
   collect do |s|
      [s.name, s.id]
   end

  end

  # POST /studentships
#when calander is installed remeber to add the dats the calander table
  def create
    @studentship = Studentship.new(studentship_params)

     @studentship.status = 1
#not inrelvant any more
    if @studentship.fire== true 
     #add date to calander with the id
     @studentship.firestatus = false
    else
     @studentship.firestatus = true 
  
     @studentship.fdate = ""

    end 
   
    if @studentship.screenttest== true 
     @studentship.screenstatus =false
    else
      @studentship.screenstatus = true 
  @studentship.sdate = ""
  

    end 
    if @studentship.training == true
     @studentship.trainstatus = false
    else
      @studentship.trainstatus = true 
     @studentship.tdate = ""  
  

    end 
   
    if @studentship.m12  == true
    else 
     @studentship.m12date = ""  
    end 

    if @studentship.m24  == true
    else 
     @studentship.m24date = ""  
    end
 
    if @studentship.m36  == true
    else 
     @studentship.m36date = ""  
    end
    @studentship.archive = false 
    if @studentship.save
     id =  createprojectid(@studentship)
     redirect_to tasks_path(:project_id => id ), notice: 'Studentship was successfully created.'
    else
     render action: 'new'
    end
  end

  # PATCH/PUT /studentships/1
  def update
    if @studentship.update(studentship_params)
      redirect_to @studentship, notice: 'Studentship was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /studentships/1
  def destroy
    @studentship.destroy
    redirect_to studentships_url, notice: 'Studentship was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentship
      @studentship = Studentship.find(params[:id])
    end
    
    def createprojectid(studentship)
         @project = Project.new
	 @project.studentship_id = studentship.id
         @project.save
         return @project.id
    end 
    # Only allow a trusted parameter "white list" through.
    def studentship_params
      params.require(:studentship).permit(:student_subcat_id, :code, :startdate, :enddate, :fire, :screenttest, :training, :firestatus, :screenstatus, :trainstatus, :m12, :m12date, :m24, :m24date, :m36, :m36date, :complete, :fdate,:sdate, :tdate, :status, :archive)
    end
end
 def grant_params
params.require(:grant).permit(:student_subcat_id, :code, :startdate, :enddate, :fire, :screenttest, :training, :firestatus, :screenstatus, :trainstatus, :m12, :m12date, :m24, :m24date, :m36, :m36date, :complete, :fdate,:sdate, :tdate, :status, :archive)

    end

