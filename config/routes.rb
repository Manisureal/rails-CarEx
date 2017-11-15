Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bookings
  resources :cars do
    resources :reviews, only: [:create, :new]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end