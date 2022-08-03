Rails.application.routes.draw do
  resources :user, only: [:show, :create]
  resources :gossip do
    resources :comment, shallow: true
  end
  resources :city, only: [:show]
  root 'gossip#index'
  get 'welcome/:first_name', to: 'welcome#show'
  get 'contact', to: 'contact#show'
  get 'team', to: 'team#show'
  post '/gossip/:id', to: 'comment#create', as: :create_c
end