Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"

  resources :quotes
  resources :pages, only: :index
end
