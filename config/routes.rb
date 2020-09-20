Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_for :students, controllers: {
    sessions: 'students/sessions'
  }

  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions'
  }

  resources :teachers
  resources :students
  resources :courses

  resource :home, only: [:index]
  root to: 'main#main'
end
