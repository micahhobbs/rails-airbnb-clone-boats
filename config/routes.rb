Rails.application.routes.draw do
  devise_for :users
  root to: 'boats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats
  get '/my_bookings', to: 'bookings#my_bookings', as: 'my_bookings'
  get '/bookings_on_my_boats', to: 'bookings#bookings_on_my_boats', as: 'bookings_on_my_boats'
  get '/my_boats', to: 'boats#my_boats', as: 'my_boats'
  resources :boats do
    resources :bookings, only: [:new, :create]
  end
end
