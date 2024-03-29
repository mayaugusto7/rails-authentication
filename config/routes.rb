# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/index'
  post 'users', to: 'users#new'

  resources :perfils
  resources :produtos
  resources :perfil_usuarios

  get 'application/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    get 'forgot_password', to: 'users/passwords#new'
    get 'reset_password', to: 'users/passwords#edit'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#home'
end
