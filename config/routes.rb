Rails.application.routes.draw do

  root 'home#index'

  resources :beginnings
  resources :middles
  resources :endings

end
