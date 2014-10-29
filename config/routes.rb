Rails.application.routes.draw do
  devise_for :users
  resources :encounters
  resources :events
  root 'events#index'
end
