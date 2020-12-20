Rails.application.routes.draw do
  
  resources :meals do 
    resources :ingredients
  end
  
  resources :users
  post '/login', to: "sessions#login"
  post '/autologin', to: "sessions#autologin"
  resources :foods
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
