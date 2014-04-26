MeHungryNow::Application.routes.draw do
  devise_for :users, controllers: {:registrations => "registrations"}
  root to: 'home#index'
  get '/emails/getkey', to: 'emails#get_key'
  get '/emails/posted_contact', to: 'emails#postcontact'
  resources :cookbooks
  resources :users
end
