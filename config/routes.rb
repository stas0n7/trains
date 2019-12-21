Rails.application.routes.draw do
  resources :railway_stations do
    patch :update_position, on: :member
  end
  resources :trains do
    resources :carriages, shallow: true
    resources :coupe_carriages, shallow: true
    resources :economy_carriages, shallow: true
    resources :sv_carriages, shallow: true
    resources :seated_carriages, shallow: true
  end
  resources :routes

  # resources :carriages
  # resources :coupe_carriages
  # resources :economy_carriages
  # resources :sv_carriages
  # resources :seated_carriages

  resources :tickets

  get 'welcome/index'
  root 'welcome#index'

end
