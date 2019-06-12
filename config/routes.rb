Rails.application.routes.draw do
  root 'application#index'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#delete'
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:index, :new, :create, :show]
end
