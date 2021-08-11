Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :customers
  devise_for :professionals

  get 'uikit', to: 'pages#uikit'
  get 'type', to: 'pages#type'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
