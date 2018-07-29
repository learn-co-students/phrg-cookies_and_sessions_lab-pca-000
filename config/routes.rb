Rails.application.routes.draw do
  root "products#index"

  resources :products, only: [:index]

  post '/' => 'products#add'
end
