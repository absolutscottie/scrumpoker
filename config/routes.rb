Rails.application.routes.draw do
  #poker
  get "/pokers", to: "pokers#new"

  resources :pokers

  #voting
  get "/votes/:id", to: "votes#show"
  post "/votes", to: "votes#create"
  patch "/votes", to: "votes#update"


  # For details on the DSL available within this file, 
  # see https://guides.rubyonrails.org/routing.html
end
