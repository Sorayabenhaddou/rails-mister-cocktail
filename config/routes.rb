Rails.application.routes.draw do

   # get "cocktails", to: "cocktails#index"
   # get "cocktails/new", to: "cocktails#new"
   # get "cocktails/:id", to: "cocktails#show", as: :cocktail
   # post "cocktail", to: "cocktail#create"
   # get "cocktails/:id/edit", to: "cocktails#edit"

   # get "doses", to: "doses#index"
   # get "doses/new", to: "doses#new"
   #get "doses/:id", to: "doses#show", as: :dose
   # post "dose", to: "dose#create"
   #get "doses/:id/edit", to: "doses#edit"

   # patch "dose/:id", to: "dose#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create] do
    resources :doses, only: [ :new, :create, :show, :destroy ]
  end
end
