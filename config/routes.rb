Rails.application.routes.draw do
  resources :users
  resources :courses
  devise_for :users

  resource :home, only: [:index]

  namespace :admin do 
    resources :home, only: [:index]
  end

  namespace :student do 
    resources :home, only: [:index]
  end

  namespace :teacher do 
    resources :home, only: [:index]
  end

  root to: 'main#main'
end
