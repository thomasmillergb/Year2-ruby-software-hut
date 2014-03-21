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
#@options = studentsubcat.find(:all,
#  :order => "name").
#   collect do |s|
#      [s.name, s.id]
#   end


     @options = Shipssub.find(:all,
   :order => "name").
   collect do |s|
      [s.name, s.id]
   end

  end

  # GET: /studentships/1/edit
  def edit
  end

  # POST /studentships
#when calander is installed remeber to add the dats the calander table
  def create
    @studentship = Studentship.new(studentship_params)
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
    if @studentship.save
      redirect_to @studentship, notice: 'Studentship was successfully created.'
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

    # Only allow a trusted parameter "white list" through.
    def studentship_params
      params.require(:studentship).permit(:student_subcat_id, :code, :startdate, :enddate, :fire, :screenttest, :training, :firestatus, :screenstatus, :trainstatus, :m12, :m12date, :m24, :m24date, :m36, :m36date, :complete, :fdate,:sdate, :tdate)
    end
end
