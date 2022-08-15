Rails.application.routes.draw do
  resources :prescriptions
  resources :hospitals do
    resources :departments
  end

  resources :departments do
    resources :users
    end
  resources :appointments
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    
  end
  get '/users/sign_in', to: 'sessions#new'
  post '/users/sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'hospitals', to: 'hospitals#show'


  # get 'prescriptions', to: 'prescriptions#update_appointment_status'
  root to: "dashboards#index"
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
