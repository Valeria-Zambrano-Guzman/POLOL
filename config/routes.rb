Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  devise_for :customers
  devise_for :professionals

  get 'uikit', to: 'pages#uikit'
  get 'pages/search', to: 'pages#search'
  get 'pages/sign_up', to: 'pages#sign_up'

  resources :services do
    resources :sub_services, shallow: true
  end

  resources :professionals, only: [:index, :show] do
    resources :reviews, only: [:create, :show]
    resources :appointments, only: [:create, :show]
    resources :specialities
  end

  resources :customers, only: [:show]
end
