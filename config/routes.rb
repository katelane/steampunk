Rails.application.routes.draw do

  root 'home#index'

  resources :beginnings
  resources :middles
  resources :endings
  resources :authors

  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

end
