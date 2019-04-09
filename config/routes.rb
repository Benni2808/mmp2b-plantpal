# frozen_string_literal: true

Rails.application.routes.draw do
  resources :plants
  # get 'sessions/destroy'
  root to: 'pages#home'
  get '/picture', to: 'pages#picture'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
