Rails.application.routes.draw do
  get 'events/create'
  get 'events/show'
  get 'events/index'
  root 'application#index'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#delete'
  resources :users, only: [:new, :create, :show]
end
