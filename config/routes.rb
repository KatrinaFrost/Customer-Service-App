Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root "home#index"
  get '/chats' => 'chats#index'
  post '/messages' => 'messages#create'
  get '/chat' => 'chat#index'

  get '/customer' => 'customer#index'
  get '/customer' => 'customer#sent'

  resources :customers do
    resources :tickets
  end

  # TODO
  # get '/blog' => 'blog#index'
  #
  # get '/factsandquestions' => 'factsandquestions#index'
  #
  # get '/tips' => 'tips#index'

  # TODO
  resources :chats
  resources :tickets
  resources :message
  # resources :blog
  # resources :factsandquestions
  # resources :tips


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
