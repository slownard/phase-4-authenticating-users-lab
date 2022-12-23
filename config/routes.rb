Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  #get  /me 
  get "/me", to: "users#show"

  #make routes for post and delete 
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
