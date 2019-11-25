Rails.application.routes.draw do
  resources :railway_stations
  resources :trains
  resources :routes
  resources :carriages
  resources :tickets

  get 'welcome/index'
  root 'welcome#index'

end
