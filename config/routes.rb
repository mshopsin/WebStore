WebStore::Application.routes.draw do
  resource :session, only: [:new, :create, :destroy]

  resources :users

  resources :products
end