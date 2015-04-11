Rails.application.routes.draw do
  root 'homes#index'
  resources :systems do
    resources :cells, except: [:show]
    resources :viri, only: [:index, :new, :create]
  end
  resources :cells, only: [:show]
  resources :viri, only: [:edit, :update, :destroy]
  devise_for :users
end
