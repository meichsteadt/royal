Rails.application.routes.draw do
  resources :products
  get "/dining", to: "products#index", category: "dining"
  get "/seating", to: "products#index", category: "seating"
  get "/bedroom", to: "products#index", category: "bedroom"
  get "/youth", to: "products#index", category: "youth"
  get "/contact", to: "stores#show"
  resources :stores
  resources :layouts
  resources :mattresses
  resources :quiz
  resources :brands
  resources :searches
  get '/brands/:id/:search', to: "brands#show"
  root "layouts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
