Rails.application.routes.draw do
  devise_for :users
  root to: 'ideas#index'
  resources :ideas do
    resources :orders, only: [:index, :create]
    resources :creations, only: [:create]
  end
  resources :users, only: [:show]
end
