Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/edit'

  resources :posts
  devise_for :users

  unauthenticated :user do
    root to: 'home#land'
  end

  authenticated :user do
    root to: 'home#feeds'
    resources :users, only: [:show, :edit]
  end

  get '/profile', to: 'home#profile'
end
