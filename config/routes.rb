Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'my_cars', to: 'cars#my_cars'
  resources :cars do
    resources :bookings
    resources :reviews, only: [:create, :new]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
