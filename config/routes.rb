Rails.application.routes.draw do
  get 'dash_boards/index'
  devise_for :users, controllers: { passwords: 'users/passwords' }
  root 'home#index'

  get '/users/dash_boards', to: 'dash_boards#index', as: 'dash_board'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
