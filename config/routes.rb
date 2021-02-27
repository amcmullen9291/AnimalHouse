Rails.application.routes.draw do
  root to: "breeds#welcome"

  resources :owners  
  resources :employees 
  resources :appointments
  resources :breeds
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'breeds/welcome'
  get 'owner/:id/appointment/new', to: 'employees#new_appointment'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/twitter'
  get '/about', to: 'static#about'
end
