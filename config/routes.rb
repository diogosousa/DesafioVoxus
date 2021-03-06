Rails.application.routes.draw do

  resources :tasks
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

 root to: 'tasks#index'
 # root to: 'home#show'
end