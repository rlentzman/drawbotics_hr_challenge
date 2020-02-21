Rails.application.routes.draw do

  # get 'applications/index'
  # get 'applications/new'
  # get 'applications/create'
  devise_for :users
  root to: 'positions#index'
  # root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #crud actions:
  resources :positions
  resources :candidates do
    resources :applications
  end
end
