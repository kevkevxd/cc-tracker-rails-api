Rails.application.routes.draw do
  resources :user_perks
  resources :cc_perks
  resources :perks
  resources :credit_cards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
