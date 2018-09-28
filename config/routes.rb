Rails.application.routes.draw do
  root to: 'application#dashboard'
  resources :roles
  resources :colors
  resources :categories
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions',passwords: 'users/passwords' }

  scope '/admin' do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
