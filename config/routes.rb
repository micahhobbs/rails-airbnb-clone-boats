Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :boats
  get '/my_boats', to: 'boats#my_boats', as: 'my_boats'

  resources :boats do
    resources :bookings, only: [:new, :create]
  end
  get '/my_bookings', to: 'bookings#my_bookings', as: 'my_bookings'
  get '/bookings_on_my_boats', to: 'bookings#bookings_on_my_boats', as: 'bookings_on_my_boats'
  post '/bookings_on_my_boats/approve', to: 'bookings#approve', as: 'booking_approve'
  post '/bookings_on_my_boats/reject', to: 'bookings#reject', as: 'booking_reject'
  post '/bookings_on_my_boats/cancel', to: 'bookings#cancel', as: 'booking_cancel'
end
