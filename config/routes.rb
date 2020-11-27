Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # for cocktails/incgredients/doses
  # root to? #do?
resources :cocktails, only: [:create, :index, :new, :show] do
  resources :doses, only: [:new, :create]
end
resources :doses, only: [:destroy]
end

# get "cocktails", to: "cocktails#index"
# get "cocktails/new", to: "cocktails#new"
# get "cocktails/:id", to: "restaurants#show", as: :cocktail #(this needed?)
# post "cocktails", to: "cocktails#create"

# A user can see the list of cocktails
# GET "cocktails"
# A user can see the details of a given cocktail, with the dose needed for each ingredient
# GET "cocktails/42"
# A user can create a new cocktail
# GET "cocktails/new"
# POST "cocktails"
