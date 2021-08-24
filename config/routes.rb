Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  devise_for :customers
  devise_for :professionals

  get 'uikit', to: 'pages#uikit'

  get 'type', to: 'pages#type'
  get 'pages/search', to: 'pages#search'
  get 'pages/result', to: 'pages#result'
  get 'pages/show_profile_c', to: 'pages#show_profile_c'
  get 'pages/create_profile_c', to: 'pages#create_profile_c'
  get 'pages/list_c', to: 'pages#list_c'
  get 'pages/list_p', to: 'pages#list_p'

  resources :services do
    resources :sub_services, shallow: true
  end
  resources :professionals, only: [:index, :show] do
    resources :reviews, only: [:create, :show]
    resources :appointments, only: [:create, :show]
    resources :specialities
  end
end
