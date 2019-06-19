Rails.application.routes.draw do
  get 'attendances/create'
  root 'application#index'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  delete 'signout', to: 'sessions#delete'

  post 'attendances', to: 'attendances#create'
  delete 'attendances', to: 'attendances#create'

  resources :users, only: [:new, :create, :show]
  resources :attendances, only: [:create, :destroy]
  resources :events, only: [:index, :new, :create, :show]
  resources :invitations, only: [:index, :new, :create, :show]
end
