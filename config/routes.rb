Rails.application.routes.draw do
  devise_for :users
  root to: 'ideas#index'
  resources :ideas, only: [:new, :create, :show, :edit, :update, :destroy]
end
