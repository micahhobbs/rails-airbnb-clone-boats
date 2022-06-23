Rails.application.routes.draw do
  devise_for :users
  root to: 'boats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats
  get '/bookings/my_bookings', to: 'bookings#my_bookings'
  get '/bookings/bookings_on_my_boats', to: 'bookings#bookings_on_my_boats'
  resources :boats do
    resources :bookings, only: [:new, :create]
  end
end
