Rails.application.routes.draw do
  resources :chats
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chats#index"
end
