Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :customers
  devise_for :professionals

  get 'uikit', to: 'pages#uikit'
  get 'type', to: 'pages#type'
  get 'pages/search', to: 'pages#search'
  get 'pages/result', to: 'pages#result'

  resources :users, only: [] do
    resources :reviews, only: [:create, :show]
    resources :appointments, only: [:create, :show]
    resources :specialities do
      resources :services
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
