Rails.application.routes.draw do

  root to: 'dashboard#show'

  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :athletes do
    resources :workouts
  end
  resource :dashboard, only: [:show]

end
