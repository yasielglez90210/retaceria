class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_roles, :autheticate_administrator!
  layout 'dashboard'
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @title = 'Nuevo usuario'
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params.to_h.merge(password: params[:user][:username]))
    respond_to do |format|
      if @user.save
        format.html {redirect_to @user,:flash => {success: 'Usuario creado exitosamente'}}
        format.json {render :show, status: :created, location: @user}
      else
        format.html {render :new,:flash => {error: 'Error al editar el usuario'}}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html {redirect_to @user, :flash => {success: 'Usuario editado exitosamente'} }
        format.json {render :show, status: :ok, location: @user}
      else
        format.html {render :edit}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_url, :flash => {success: 'Usuario eliminado exitosamente'} }
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :phone, :email, :username, :role_id)
  end

  def set_roles
    @roles = Role.all
  end

end
