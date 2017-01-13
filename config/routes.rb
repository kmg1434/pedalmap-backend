# frozen_string_literal: true
Rails.application.routes.draw do
  # EXAMPLE ROUTES
  resources :examples, except: [:new, :edit]

  # AUTH ROUTES
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # BOARD ROUTES
  resources :boards
  resources :pedals
end
