Rails.application.routes.draw do
  resources :railway_stations do
    patch :update_position, on: :member
  end
  resources :trains do
    resources :carriages
    resources :coupe_carriages
    resources :economy_carriages
    resources :sv_carriages
    resources :seated_carriages
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
