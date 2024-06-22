# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/:locale' => 'static_pages#index'

  # Defines the root path route ('/')
  root 'static_pages#index'

  scope '/:locale', locale: /en|ua/ do
    devise_for :users

    resources :static_pages
    get :see, controller: 'static_pages'
  end
end
