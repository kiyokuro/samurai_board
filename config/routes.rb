Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#show"

  resources :user
  scope module: :task do
    resources :board, only: %i[new create index show]
  end
end
