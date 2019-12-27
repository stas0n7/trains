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
  resources :users, except: [:edit, :update]
  resources :tickets, except: [:edit, :update]

  resource :search, only: [:new, :show]

  get 'welcome/index'
  root 'welcome#index'

end
