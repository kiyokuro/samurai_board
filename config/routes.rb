Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#show"

  resources :user
  resources :board, only: [:new, :create, :index, :show]
end
