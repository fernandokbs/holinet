Rails.application.routes.draw do
  resources :teachers
  resources :students
  resources :courses

  resource :home, only: [:index]
  root to: 'main#main'
end
