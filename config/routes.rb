Rails.application.routes.draw do
  resources :schools
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_for :students, controllers: {
    sessions: 'students/sessions'
  }

  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions'
  }

  resources :teachers do 
    get :home, on: :collection
  end

  resources :students do 
    get :home, on: :collection
  end

  resources :courses
  get '/main', to: 'main#home', as: 'home'
  root to: 'main#main'
end
