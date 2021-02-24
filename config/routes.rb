Rails.application.routes.draw do
  root to: "breeds#welcome"
    resources :breeds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'breeds/welcome'
end
