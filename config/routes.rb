Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :routes
    resources :railway_stations do
      patch :update_position, on: :member
    end
    resources :trains do
      resources :carriages, shallow: true
      resources :coupe_carriages, only: [:new, :create, :show], shallow: true
      resources :economy_carriages, only: [:new, :create, :show], shallow: true
      resources :sv_carriages, only: [:new, :create, :show], shallow: true
      resources :seated_carriages, only: [:new, :create, :show], shallow: true
    end
    resources :tickets, except: [:new, :create]
  end

  resources :tickets, except: [:edit, :update]
  resource :search, only: [:new, :show]

  get 'welcome/index'
  root 'welcome#index'

end
