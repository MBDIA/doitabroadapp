Rails.application.routes.draw do
  # See all routes with "rails routes" command in terminal

  # Routes for rails_admin controller
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Routes for reservations controller
  resources :reservations, only: [:show, :new, :create, :edit, :update] do
    # Nested routes for payments controller
    resources :payments, only: [:new, :create]
  end

  # Routes for documents
  resources :documents, only: [:create]

  # Routes for custom users controller (not devise)
  resources :users, only: [:edit, :update]
  post '/create_user_info' => 'users#create_user_info', as: 'create_user_info'
  get '/users/:id/informations' => 'users#user_info', as: 'user_info'

  resources :user_data, only: [:new, :create, :update]
  # Routes for devise (user authentication)
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # Routes for pages controller
  root to: 'users#tracking'

  get '/tracking' => 'users#tracking', as: 'tracking'
  get '/profile' => 'user_data#profile', as: 'profile'
  get '/suggestions' => 'users#suggestions', as: 'suggestions'
  get '/accomodations' => 'users#accomodations', as: 'accomodations'
end
