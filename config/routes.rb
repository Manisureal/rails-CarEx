Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'my_cars', to: 'cars#my_cars'
  resources :cars do
    resources :bookings, except: [:index]
    resources :reviews, only: [:create, :new]
  end
  get 'dashboard', to: 'bookings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
