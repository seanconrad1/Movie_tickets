Rails.application.routes.draw do
  resources :movies
  resources :tickets, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
