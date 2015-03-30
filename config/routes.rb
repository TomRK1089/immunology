Rails.application.routes.draw do
  root 'homes#index'
  resources :systems, only: [:index] do
    resources :cells
    resources :viri
  end
  devise_for :users
end
