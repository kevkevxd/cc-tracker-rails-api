Rails.application.routes.draw do
  resources :credit_cards, only: [:index]
  resources :users, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
