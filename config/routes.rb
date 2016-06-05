Rails.application.routes.draw do

  root to: 'dashboard#show'

  resources :athletes

  resource :dashboard, only: [:show]

end
