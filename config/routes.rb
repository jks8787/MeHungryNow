MeHungryNow::Application.routes.draw do
  devise_for :users, controllers: {:registrations => "registrations"}
  root to: 'home#index'
  get '/emails/getkey', to: 'emails#get_key'
  post '/emails/postcontact', to: 'emails#postcontact'
  resources :cookbooks
  resources :users
end
