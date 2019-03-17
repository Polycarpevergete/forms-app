Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'flights#index'
  get '/planets', to: 'planets#index'
  get 'planets/new'
  get '/bookings/new', to: 'bookings#new'

  resources :planets
  resources :flights
  resources :bookings

end
