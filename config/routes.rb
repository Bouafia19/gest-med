Rails.application.routes.draw do
  root 'welcomes#index'
  resources :users
  
  
  get 'welcomes/leaflet'
  devise_for :users ,only: :session , path: 'session',path_name: {sign_in:'login',sign_out: 'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
