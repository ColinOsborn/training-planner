Rails.application.routes.draw do

  root to: 'dashboard#show'

  resources :athletes do
    resources :workouts
  end
  resource :dashboard, only: [:show]

end
