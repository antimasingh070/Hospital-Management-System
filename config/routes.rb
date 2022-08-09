Rails.application.routes.draw do
  resources :time_slots
  resources :appointments
  resources :departments
  devise_for :users

  root to: "dashboards#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
