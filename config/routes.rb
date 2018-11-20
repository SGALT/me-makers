Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :artisans, only: [:index, :show] do
    resources :prestations, only: [:create]
  end

  resources :projects

  resources :prestations, only: [:show, :update] do
    resources :messages, only: [:create]
  end

  namespace :artisans do
    resources :prestations, only: [:index, :edit, :update]
  end
end
