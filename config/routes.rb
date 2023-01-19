Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index]
  resources :clothes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
