Rails.application.routes.draw do
  namespace :settings do
    resources :exchange_rates, only: [:index, :create, :new]
  end

  # Use only devise sessions
  devise_for :users, controllers: {
    sessions: 'users/sessions',
  }, skip: [:registrations, :passwords, :confirmations, :unlocks, :omniauth_callbacks]

  resources :users

  root "users#index"
end
