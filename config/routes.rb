Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :produits
  resources :categories
  resources :marques
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
