Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :campers, only: [:index, :show]
  resources :activities, only: [:index]
  resources :signups, only: []
end
