Rails.application.routes.draw do
  #poker
  get "/pokers", to: "pokers#new"
  post "/votes", to: "votes#create"

  resources :pokers
  resources :votes


  # For details on the DSL available within this file, 
  # see https://guides.rubyonrails.org/routing.html
end
