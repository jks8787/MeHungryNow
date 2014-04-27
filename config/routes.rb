MeHungryNow::Application.routes.draw do
  devise_for :users, controllers: {:registrations => "registrations"}

  as :user do
    get '/users/fit_goals', to: 'registrations#fit_goals', as: 'fit_goals'
    put '/registrations/set_fit_goals', to: 'registrations#set_fit_goals'
  end

  root to: 'home#index'
  get '/cookbooks/yogi', to: 'cookbooks#yogi'
  get '/cookbooks/runner', to: 'cookbooks#runner'
  get '/cookbooks/weight_lifter', to: 'cookbooks#weight_lifter'
  get '/emails/getkey', to: 'emails#get_key'
  get '/emails/posted_contact', to: 'emails#postcontact'

  resources :cookbooks
  resources :users
end
