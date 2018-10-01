Rails.application.routes.draw do
  resources :providers
  resources :product_merceria
  root to: 'application#dashboard'
  resources :retaceria
  resources :colors
  resources :categories
  resources :roles
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions',passwords: 'users/passwords' }

  scope '/admin' do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
