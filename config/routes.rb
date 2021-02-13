Rails.application.routes.draw do
  devise_for :users
  get "users/:id", to: "users#show", as: :dashboard

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :games, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
end
