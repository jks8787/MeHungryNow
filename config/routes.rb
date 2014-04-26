MeHungryNow::Application.routes.draw do
  devise_for :users
  root to: 'home#index'

  get '/getkey', to: 'emails#get_key'

  resources :cookbooks
end
