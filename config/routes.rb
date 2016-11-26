Rails.application.routes.draw do
  # get 'books/index'
  resources :books
  root "books#index"
end
