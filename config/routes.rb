Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get 'search', to: 'posts#search'
  resources :posts, except: :index 
  resources :users ,only: [:new,:create,:edit,:destroy,:update,:show]
  resources :targets, only: [:new, :create]
  resources :entries, only:[:new,:create]
end
