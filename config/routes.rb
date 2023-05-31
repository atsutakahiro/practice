Rails.application.routes.draw do
  get 'dash_boards/index'
  devise_for :users, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'home#index'

  resources :dash_boards, only: [:index]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
