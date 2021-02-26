Rails.application.routes.draw do
  root to: "breeds#welcome"

  resources :owners do 
    member do 
      get 'comment'  #will need a comments/index
      post 'comment'
    end
  end 
  resources :employees do
    resources :appointments
  end 
  resources :breeds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'breeds/welcome'
  get 'owner/:id/appointment/new', to: 'employees#new_appointment'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/twitter'
  delete '/logout', to: 'sessions#destroy'
  get '/about', to: 'static#about'
end
