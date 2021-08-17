Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :customers
  devise_for :professionals

  get 'uikit', to: 'pages#uikit'

  get 'type', to: 'pages#type'
  get 'pages/search', to: 'pages#search'
  get 'pages/result', to: 'pages#result'
  get 'pages/show_profile_c', to: 'pages#show_profile_c'
  get 'pages/profile_p', to: 'pages#profile_p'
  get 'pages/waiting', to: 'pages#waiting'
  get 'pages/accepted', to: 'pages#accepted'
  get 'pages/rejected', to: 'pages#rejected'
  get 'pages/create_profile_c', to: 'pages#create_profile_c'
  get 'pages/list_c', to: 'pages#list_c'
  get 'pages/list_p', to: 'pages#list_p'

  resources :professionals, only: [:index] do
    resources :reviews, only: [:create, :show]
    resources :appointments, only: [:create, :show]
    resources :specialities do
      resources :services
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
