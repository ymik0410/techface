Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  # resources :mentees
  get "mentees/new", to: "mentees#new", as: "new_mentee"
  # get "mentees/:id", to: "mentees#show", as: :mentee
  post "mentees", to: "mentees#create"
  get "mentees/:id/edit", to: "mentees#edit", as: "edit_mentee"
  patch "mentees/:id", to: "mentees#update"

end
