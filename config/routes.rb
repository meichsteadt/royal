Rails.application.routes.draw do
  resources :products
  resources :dinings
  resources :bedrooms
  resources :seatings
  resources :stores
  resources :layouts
  root "layouts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
