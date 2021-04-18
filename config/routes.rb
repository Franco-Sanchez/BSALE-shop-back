Rails.application.routes.draw do
  get '/products/:name', to: 'products#search'

  resources :products, only: :index

  root 'health#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
