Rails.application.routes.draw do
  get 'dash_boards/index'
  devise_for :users, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  root 'home#index'

  resources :dash_boards, only: [:index]

  # 追加するルート
  namespace :users do
    resources :articles, path: '/articles'
  end
  

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
