class ColorsController < ApplicationController
  before_action :set_color, only: [:show, :edit, :update, :destroy]
  layout 'dashboard'

  # GET /colors
  # GET /colors.json
  def index
    @titulo = 'Colores'
    @colors = Color.all
  end

  # GET /colors/1
  # GET /colors/1.json
  def show
  end

  # GET /colors/new
  def new
    @color = Color.new
  end

  # GET /colors/1/edit
  def edit
  end

  # POST /colors
  # POST /colors.json
  def create
    @color = Color.new(color_params)

    respond_to do |format|
      if @color.save
        format.html {redirect_to @color, notice: 'Color was successfully created.'}
        format.json {render json: {data: @color, status: :created, :flash => {success: 'Color creado exitosamente'}}}
      else
        format.html {render :new}
        format.json {render json: {errors: @color.errors, status: :unprocessable_entity}}
      end
    end
  end

  # PATCH/PUT /colors/1
  # PATCH/PUT /colors/1.json
  def update
    respond_to do |format|
      if @color.update(color_params)
        format.html {redirect_to @color, notice: 'Color was successfully updated.'}
        format.json {render :show, status: :ok, location: @color}
      else
        format.html {render :edit}
        format.json {render json: @color.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /colors/1
  # DELETE /colors/1.json
  def destroy
    has_colors = HasColor.where("color_id = ?", params[:id])
    has_colors.each do |item|
      item.destroy
    end
    @color.destroy
    respond_to do |format|
      format.html {redirect_to colors_url, notice: 'Color was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_color
    @color = Color.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def color_params
    params.require(:color).permit(:name)
  end
end
