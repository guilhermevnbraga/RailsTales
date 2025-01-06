Rails.application.routes.draw do
  root 'home#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts do
    resources :comments, only: [:create]
  end

  resources :passwords, only: [:new, :create, :edit, :update], param: :token
end
