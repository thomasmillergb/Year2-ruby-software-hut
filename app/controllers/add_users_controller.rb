class AddUsersController < ApplicationController
  before_action :set_add_user, only: [:show, :edit, :update, :destroy]

  # GET /add_users
  def index
    @add_users = AddUser.all
  end

  # GET /add_users/1
  def show
  end

  # GET /add_users/new
  def new
    @add_user = AddUser.new
  end

  # GET /add_users/1/edit
  def edit
  end

  # POST /add_users
  def create
    @add_user = AddUser.new(add_user_params)

    if @add_user.save
      redirect_to @add_user, notice: 'Add user was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /add_users/1
  def update
    if @add_user.update(add_user_params)
      redirect_to @add_user, notice: 'Add user was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /add_users/1
  def destroy
    @add_user.destroy
    redirect_to add_users_url, notice: 'Add user was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_user
      @add_user = AddUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def add_user_params
      params.require(:add_user).permit(:name, :password, :level, :email)
    end
end
