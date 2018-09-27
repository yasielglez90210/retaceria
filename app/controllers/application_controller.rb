class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def dashboard
    render  layout: 'dashboard'
  end
end
