Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  get 'users', to: 'users#index', as: 'allusers'
  get 'users/:id', to: 'users#show', as: 'user'
  post 'users', to: 'users#create', as: 'newuser'
  patch 'users/:id', to: 'users#update', as:'updateuser'
  delete 'users/:id', to: 'users#destroy', as:'luser'
end