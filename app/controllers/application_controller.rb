class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def dashboard
    @arreglo = [{'llave1':'valor1'},{'llave2':'valor2'}]
    @array_json = ActiveSupport::JSON.encode(@arreglo)
    render  layout: 'dashboard'
  end
end
