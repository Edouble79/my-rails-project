# config/routes.rb
Rails.application.routes.draw do
  resources :authors do
  resources :books, only: [:index, :new]
  end

  # We still want to be able to access the full collection,
  # so books needs resources too
  resources :books
end 