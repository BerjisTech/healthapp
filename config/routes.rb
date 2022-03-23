# frozen_string_literal: true

Rails.application.routes.draw do
  resources :appointments
  resources :departments
  resources :testimonials
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  post 'verify_email', controller: :application, action: :verify_email

  authenticated :user do
    get 'dashboard', controller: :dashboard, action: :index
  end
end
