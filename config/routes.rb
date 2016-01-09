Rails.application.routes.draw do
  root 'static#home'

  get 'signup' => 'users#new'

  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :projects do
    resources :votes, shallow: true
  end
  resources :hackdays do
    resources :projects, shallow: true
  end
end
