Rails.application.routes.draw do
  resources :users
  resources :projects do
    resources :votes, shallow: true
  end
  resources :hackdays do
    resources :projects, shallow: true
  end
end
