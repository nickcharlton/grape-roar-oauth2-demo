Rails.application.routes.draw do
  devise_for :users

  get 'home/index'

  mount API => '/'

  root 'home#index'
end
