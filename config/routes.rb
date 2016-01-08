Rails.application.routes.draw do
  root 'hackdays#index'

  resources :users
  resources :projects
  resources :hackdays
end
