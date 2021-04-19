Rails.application.routes.draw do
  resources :products, only: :index

  root 'health#index'
end
