Rails.application.routes.draw do
  root to: 'plants#index'

  resources :data_observations
  resources :locations
  resources :plants
  resources :rooms
  devise_for :users
end
