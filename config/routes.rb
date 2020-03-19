Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get 'search', to: 'posts#search'
  resources :users ,only: [:new,:create,:edit,:destroy,:update,:show]
  resources :posts do 
    resources :targets, only: [:new, :create]
    resources :entry, only:[:new,:create]
    resources :likes, only: [:create, :destroy]
    collection do
      get 'get_category_children', defaults: { format: 'json' }
    end
  end
end
