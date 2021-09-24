Rails.application.routes.draw do
  root to: 'home#index'
  resources :properties, only: [:show, :new, :create, :edit, :update]
  resources :property_types, only: [:index, :show, :new, :create, :edit, :update]
  resources :property_locations, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
