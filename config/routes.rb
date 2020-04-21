Rails.application.routes.draw do
  get 'doctors/search'
  get 'patients/search'
  resources :doctors
  resources :patients
  root 'welcomes#index'
  resources :users
  
  
  get 'welcomes/leaflet'
  devise_for :users ,only: :session , path: 'session',path_name: {sign_in:'login',sign_out: 'logout'}
  get   'users/change_passd/:id', to: 'users#change_passd'
  
  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

   # conversations
   resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

  get "*path", to: redirect("/404")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
