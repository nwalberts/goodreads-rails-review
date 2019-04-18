Rails.application.routes.draw do
  root "books#index"

  resources :books, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
end
