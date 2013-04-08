WebStore::Application.routes.draw do
  resource :session, only: [:create, :destroy]
end