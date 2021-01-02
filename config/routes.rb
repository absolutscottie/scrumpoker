Rails.application.routes.draw do
  get "/pokers", to: "pokers#new"

  resources :pokers
  # For details on the DSL available within this file, 
  # see https://guides.rubyonrails.org/routing.html
end
