# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :players

  root "home#index"

  resources :tasks
  resources :players
end
