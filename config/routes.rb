WebStore::Application.routes.draw do
  resource :session, only: [:new, :create, :destroy]

  resources :users do
    resources :orders, only: [:new]
  end
  resources :products

  post "/add_to_cart", to: 'users#add_to_cart'

  post "/confirm_order", to: 'orders#confirm_order'
end