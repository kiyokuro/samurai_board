Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#show"

  resources :users
  scope module: :task do
    resources :boards, only: [:new, :create, :index, :show] do
      resources :finished_points, only: [:new, :create]
      resources :cards, only: [:index, :show, :new, :create]
    end
  end
end
