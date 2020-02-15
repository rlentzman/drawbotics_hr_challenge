Rails.application.routes.draw do
  get 'candidates/index'
  get 'candidates/show'
  get 'candidates/new'
  get 'candidates/edit'
  get 'candidates/create'
  get 'candidates/update'
  get 'candidates/destroy'
  devise_for :users
  root to: 'positions#index'
  # root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #crud actions:
  resources :positions
  resources :candidates
end
