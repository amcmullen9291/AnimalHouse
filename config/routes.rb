Rails.application.routes.draw do
  root to: "breeds#welcome"

  resources :owners do 
    member do 
      get 'comment'  #will need a comments/index
      post 'comment'
    end
  end 
  resources :employees do
    member {resources :appointments}
  end 
  resources :breeds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'breeds/welcome'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/twitter'
  delete '/logout', to: 'sessions#destroy'
  get 'employee/:id/appointment/new', to: 'employees#new_appointment'
  get '/comments', :to => 'owners#comments'
end
