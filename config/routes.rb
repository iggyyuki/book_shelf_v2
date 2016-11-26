Rails.application.routes.draw do
  resources :reviews
  # get 'books/index'
  resources :books
  root "books#index"
end
