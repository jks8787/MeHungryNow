MeHungryNow::Application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/users/fit_goals', to: 'users#fit_goals', as: 'fit_goals'
  resources :cookbooks
end
