Rails.application.routes.draw do
  resources :products

  root 'products#index'

  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
end
