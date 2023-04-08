# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :players
  resources :players
  root "home#index"
  resources :tasks
end
