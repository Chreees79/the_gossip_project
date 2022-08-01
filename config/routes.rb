Rails.application.routes.draw do
  get 'author/:id', to: 'author#show', as: 'author'
  get 'gossip/:id', to: 'gossip#show', as: 'gossip'
  root 'home#index'
  get 'welcome/:first_name', to: 'welcome#show'
  get 'contact', to: 'contact#show'
  get 'team', to: 'team#show'
  end