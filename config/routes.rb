Rails.application.routes.draw do

  get "/cocktails", to: "cocktails#index"
  get "/cocktails/new", to: "cocktails#new", as: "new_cocktail"
  get "/cocktails/:id", to: "cocktails#show", as: "cocktail"
  post "/cocktails", to: "cocktails#create"

  get "cocktails/:cocktail_id/doses/new", to: "doses#new", as: "new_doses"
  post "cocktails/:cocktail_id/doses", to: "doses#create", as: :doses
  delete "doses/:id", to: "doses#destroy"
  root to: "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
