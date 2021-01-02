Rails.application.routes.draw do
  get "/pokers", to: "pokers#create"

  resources :pokers
  # For details on the DSL available within this file, 
  # see https://guides.rubyonrails.org/routing.html
end
