class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  layout 'dashboard'
  before_action :autheticate_administrator!

  # GET /categories
  # GET /categories.json
  def index
    @title = 'Categorias de Productos'
    # @categories = Category.all.order(name: :asc)
    respond_to do |format|
      format.html
      format.json { render json: CategoryDatatable.new(params, view_context: view_context) }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @title = 'Nueva catgoria'
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category ,:flash => {success: 'Categoría creada exitosamente'}}
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new,:flash => {error: 'Error al crear la categoria '}}
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)

        format.html { redirect_to categories_path, :flash => {success: 'Categoría editada exitosamente'} }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.js {render :edit}
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    if @category.retaceriums.any?
       @category.is_delete = true
       @category.save
    else
      @category.destroy
    end
    respond_to do |format|
      format.html { redirect_to categories_url, :flash => {success: 'Categoría eliminada exitosamente'} }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
