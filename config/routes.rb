Rails.application.routes.draw do
  resources :posts
  devise_for :users

  unauthenticated :user do
    root to: 'home#land'
  end

  authenticated :user do
    root to: 'home#feeds'
  end

end
