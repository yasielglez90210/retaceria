Rails.application.routes.draw do
  resources :categories
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions',passwords: 'users/passwords' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#dashboard'
end
