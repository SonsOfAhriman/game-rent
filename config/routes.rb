Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [ :show, :edit, :update ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :games, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
end
