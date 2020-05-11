# frozen_string_literal: true

Rails.application.routes.draw do
  resources :games, except: %i[edit update]
  resources :plays, only: :create
  root 'games#index'
  # get 'game/create'
  # post 'game/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
