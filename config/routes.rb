Rails.application.routes.draw do
  resources :employers
  resources :searches


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#home"
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
