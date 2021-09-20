Rails.application.routes.draw do
  root to: 'home#index'
  get '/home/:id', to: 'home#show', as: 'property'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
