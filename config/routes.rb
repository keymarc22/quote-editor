Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"

  resources :quotes do
    resources :line_item_dates, except: [:index] do
      resources :line_items, except: [:index, :show]
    end
  end
  resources :pages, only: :index
end
