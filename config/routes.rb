Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

   resources :books
   resources :user_books
   resources :notes
   resources :users

   namespace :api do
    # resources :users, only: [:index, :destroy, :update]
    post "/signup", to: "users#create"
    get "/me", to: "users#show"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
    # patch "/bookclubs/:id/current-book", to: "bookclubs#current_book"

    # resources :books, only: [:show, :create, :destroy]
    
  
    
    
  end
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

end
