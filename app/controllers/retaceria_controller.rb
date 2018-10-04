class RetaceriaController < ApplicationController
  before_action :set_retacerium, only: [:show, :edit, :update, :destroy]
  before_action :set_categories, :set_colors
  layout 'dashboard'

  # GET /retaceria
  # GET /retaceria.json
  def index
    @title = 'Productos de Retaceria'
    @retaceria = Retacerium.all
  end

  # GET /retaceria/1
  # GET /retaceria/1.json
  def show
  end

  # GET /retaceria/new
  def new
    @title = 'Nuevo producto de Retaceria'
    @retacerium = Retacerium.new
  end

  # GET /retaceria/1/edit
  def edit
    @title = 'Editando producto de Retaceria'
  end

  # POST /retaceria
  # POST /retaceria.json
  def create
    @retacerium = Retacerium.new(retacerium_params)
    @retacerium.arraycolors = params[:colors]
    respond_to do |format|
      if @retacerium.save
        format.html {redirect_to @retacerium, :flash => {success: 'Producto creado exitosamente'}}
        format.json {render :show, status: :created, location: @retacerium}
      else
        format.html {render :new}
        format.json {render json: @retacerium.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /retaceria/1
  # PATCH/PUT /retaceria/1.json
  def update
    respond_to do |format|
      @retacerium.arraycolors = params[:colors]
      if @retacerium.update(retacerium_params)
        format.html {redirect_to @retacerium, :flash => {success: 'Producto editado exitosamente'}}
        format.json {render :show, status: :ok, location: @retacerium}
      else
        format.html {render :edit}
        format.json {render json: @retacerium.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /retaceria/1
  # DELETE /retaceria/1.json
  def destroy
    has_colors = HasColor.where("retacerium_id = ?",params[:id])
    has_colors.each do | item|
      item.destroy
    end
    @retacerium.destroy
    respond_to do |format|
      format.html {redirect_to retaceria_url, :flash => {error: 'Producto eliminado exitosamente'}}
      format.json {head :no_content}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_retacerium
    @retacerium = Retacerium.find(params[:id])
  end

  def set_categories
    @categories = Category.active
  end

  def set_colors
    @colors = Color.all.active
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def retacerium_params
    params.require(:retacerium).permit(:name, :category_id, :cost, :rinde)
  end
end
