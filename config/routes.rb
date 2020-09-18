Rails.application.routes.draw do
  devise_for :users

  resource :home, only: [:index]

  root to: 'main#main'
end
