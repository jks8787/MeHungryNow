MeHungryNow::Application.routes.draw do
  devise_for :users

  root to: 'home#index'
  get '/getkey', to: 'emails#get_key'
  get '/users/fit_goals', to: 'users#fit_goals', as: 'fit_goals'
  resources :cookbooks
  resources :users
end
