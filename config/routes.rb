Rails.application.routes.draw do
  get 'books/index'
  root 'authors#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :authors
end
