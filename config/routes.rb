Rails.application.routes.draw do
  devise_for :users
  resources :encounters
  root 'encounters#index'
end
