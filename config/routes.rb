MeHungryNow::Application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/emails/getkey', to: 'emails#get_key'
  post '/emails/postcontact', to: 'emails#postcontact'
  get '/users/fit_goals', to: 'users#fit_goals', as: 'fit_goals'
  resources :cookbooks
  resources :users
end
