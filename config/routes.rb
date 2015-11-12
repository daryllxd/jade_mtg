Rails.application.routes.draw do
  devise_for :users
  root to: 'visitors#index'

  resources :binders
  resource :profile, only: [:show]
end
