class StudentSubcatsController < ApplicationController
  before_action :set_student_subcat, only: [:show, :edit, :update, :destroy]

  # GET /student_subcats
  def index
    @student_subcats = StudentSubcat.all
  end

  # GET /student_subcats/1
  def show
  end

  # GET /student_subcats/new
  def new
    @student_subcat = StudentSubcat.new
  end

  # GET /student_subcats/1/edit
  def edit
  end

  # POST /student_subcats
  def create
    @student_subcat = StudentSubcat.new(student_subcat_params)

    if @student_subcat.save
      redirect_to @student_subcat, notice: 'Student subcat was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /student_subcats/1
  def update
    if @student_subcat.update(student_subcat_params)
      redirect_to @student_subcat, notice: 'Student subcat was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /student_subcats/1
  def destroy
    @student_subcat.destroy
    redirect_to student_subcats_url, notice: 'Student subcat was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_subcat
      @student_subcat = StudentSubcat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_subcat_params
      params.require(:student_subcat).permit(:name)
    end
end
