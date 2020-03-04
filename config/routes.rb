Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts
  resources :users ,only: [:new,:create,:edit,:destroy,:update,:show]
  resources :targets, only: [:new, :create]
end
