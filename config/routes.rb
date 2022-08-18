Rails.application.routes.draw do
  resources :prescriptions
  resources :appointments
  resources :hospitals do
    resources :departments
  end

  resources :departments, only:[] do
    resources :users
  end
  resources :appointments, only:[] do
    resources :prescriptions
  end
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    
  end
  get '/users/sign_in', to: 'sessions#new'
  post '/users/sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'hospitals', to: 'hospitals#show'
  post '/departments', to: 'departments#create'
  # match '/appointments/mark_as_completed' => 'appointments#mark_as_completed', as: 'mark_as_completed_appointment', via: :put
  get '/appointments/:id/mark_as_completed' => 'appointments#mark_as_completed', as: 'mark_as_completed'
  # get 'prescriptions', to: 'prescriptions#update_appointment_status'
  root to: "dashboards#index"
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'departments', to: 'departments#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
