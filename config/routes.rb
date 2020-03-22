Rails.application.routes.draw do
  get 'welcomes/leaflet'
  devise_for :users
  resources :users
  root 'welcomes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
