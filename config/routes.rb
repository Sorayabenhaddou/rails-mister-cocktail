Rails.application.routes.draw do

   # get "cocktails", to: "cocktails#index"
   # get "cocktails/new", to: "cocktails#new"
   # get "cocktails/:id", to: "cocktails#show", as: :cocktail
   # post "cocktail", to: "cocktail#create"
   # get "cocktails/:id/edit", to: "cocktails#edit"

   # get "doses", to: "doses#index"
   # get "doses/new", to: "doses#new"
   # get "doses/:id", to: "doses#show", as: :review
   # post "dose", to: "dose#create"
   # get "doses/:id/edit", to: "doses#edit"
   # patch "dose/:id", to: "dose#update"

  resources :cocktails do
    resources :doses, only: [:new, :create, :update]
  end
   resources :doses, only: [:destroy]
end
