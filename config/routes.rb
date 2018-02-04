Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  resources :posts
  devise_for :users

  unauthenticated :user do
    root to: 'home#land'
  end

  authenticated :user do
    root to: 'home#feeds'
    resources :users, only: [:show]
  end

  get '/profile', to: 'home#profile'
end
