Rails.application.routes.draw do
  get 'events/index'

  get 'events/show'

  get 'events/edit'

  get 'events/new'

  get 'events/update'

  get 'events/destroy'

  get 'events/create'

  devise_for :users
  resources :encounters
  root 'encounters#index'
end
