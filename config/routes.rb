Rails.application.routes.draw do
  get 'home/index'

  mount API => '/'

  root 'home#index'
end
