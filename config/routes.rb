Rails.application.routes.draw do
  resources :user, only: [:show, :create]
  resources :gossip, only: [:show, :index, :create, :new]
  root 'gossip#index'
  get 'welcome/:first_name', to: 'welcome#show'
  get 'contact', to: 'contact#show'
  get 'team', to: 'team#show'
end