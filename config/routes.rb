Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root "home#index"

  get '/chats' => 'chats#index'

  resources :chats

  resources :tickets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end