Rails.application.routes.draw do

  # Use only devise sessions
  devise_for :users, controllers: {
    sessions: 'users/sessions',
  }, skip: [:registrations, :passwords, :confirmations, :unlocks, :omniauth_callbacks]

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
