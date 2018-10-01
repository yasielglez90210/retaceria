class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def dashboard
    @arreglo = [{'llave1': 'valor1'}, {'llave2': 'valor2'}]
    @array_json = ActiveSupport::JSON.encode(@arreglo)
    render layout: 'dashboard'
  end

  protected

  def autheticate_administrador!
    redirect_to root_path unless user_signed_in? && current_user.is_administrador?
  end

  def autheticate_sale_retaceria!
    redirect_to root_path unless user_signed_in? && current_user.is_sale_retaceria?
  end

  def autheticate_caja_retaceria!
    redirect_to root_path unless user_signed_in? && current_user.is_caja_retaceria?
  end

  def autheticate_sale_merceria!
    redirect_to root_path unless user_signed_in? && current_user.is_sale_merceria?
  end

  def autheticate_caja_merceria!
    redirect_to root_path unless user_signed_in? && current_user.is_caja_merceria?
  end
end


