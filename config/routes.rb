Rails.application.routes.draw do
  resources :appointments do
    collection do
    get :select_week
    end
  end
  resources :time_slots
  resources :dates
  root 'appointments#index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
