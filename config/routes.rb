Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

   resources :books
   resources :user_books
   resources :notes
   resources :users
end
