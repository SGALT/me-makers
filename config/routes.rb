Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  resources :artisans, only: [:index, :show] do
    resources :prestations, only: [:create]
  end

  resources :projects

  resources :prestations, only: [:show, :update] do
    member do
      post "accept"
      post "decline"
    end
    resources :messages, only: [:create]
  end

  namespace :me_artisans do
    resources :prestations, only: [:index, :edit, :update]
  end
end
