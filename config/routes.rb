Rails.application.routes.draw do
  devise_for :users, path: 'auth'

  get 'home/index'

  mount API => '/'

  root 'home#index'
end
