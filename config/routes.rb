Rails.application.routes.draw do
  root to: 'plants#index'

  resources :data_observations
  resources :journal_entries
  resources :locations
  resources :plants do
    get :interactions, to: 'interactions#index'
    post :update_interactions, to: 'interactions#update'
  end
  resources :rooms
  devise_for :users
end
