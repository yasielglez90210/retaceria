class ProductMerceriaController < ApplicationController
  before_action :set_product_mercerium, only: [:show, :edit, :update, :destroy]
  layout 'dashboard'
  # GET /product_merceria
  # GET /product_merceria.json
  def index
    @product_merceria = ProductMercerium.all
  end

  # GET /product_merceria/1
  # GET /product_merceria/1.json
  def show
  end

  # GET /product_merceria/new
  def new
    @product_mercerium = ProductMercerium.new
  end

  # GET /product_merceria/1/edit
  def edit
  end

  # POST /product_merceria
  # POST /product_merceria.json
  def create
    @product_mercerium = ProductMercerium.new(product_mercerium_params)

    respond_to do |format|
      if @product_mercerium.save
        format.html { redirect_to @product_mercerium, notice: 'Product mercerium was successfully created.' }
        format.json { render :show, status: :created, location: @product_mercerium }
      else
        format.html { render :new }
        format.json { render json: @product_mercerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_merceria/1
  # PATCH/PUT /product_merceria/1.json
  def update
    respond_to do |format|
      if @product_mercerium.update(product_mercerium_params)
        format.html { redirect_to @product_mercerium, notice: 'Product mercerium was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_mercerium }
      else
        format.html { render :edit }
        format.json { render json: @product_mercerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_merceria/1
  # DELETE /product_merceria/1.json
  def destroy
    @product_mercerium.destroy
    respond_to do |format|
      format.html { redirect_to product_merceria_url, notice: 'Product mercerium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_mercerium
      @product_mercerium = ProductMercerium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_mercerium_params
      params.require(:product_mercerium).permit(:name, :article, :cost, :price, :initial_stock, :minimum, :current_stock)
    end
end
