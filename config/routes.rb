Rails.application.routes.draw do
  root 'homes#index'
  resources :systems do
    resources :cells, only: [:index, :new, :create]
    resources :viri, only: [:index, :new, :create]
  end
  resources :cells, only: [:edit, :update, :destroy]
  resources :viri, only: [:edit, :update, :destroy]
  devise_for :users
end
