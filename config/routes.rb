Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root_url 'flights#index'
  get '/planets', to: 'planets#index'

  resources :planets
  resources :flights
  
end
