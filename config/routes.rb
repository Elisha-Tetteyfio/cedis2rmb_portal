Rails.application.routes.draw do

  # Use only devise sessions
  devise_for :users, controllers: {
    sessions: 'users/sessions',
  }, skip: [:registrations, :passwords, :confirmations, :unlocks, :omniauth_callbacks]

  resources :users

  root "users#index"
end
